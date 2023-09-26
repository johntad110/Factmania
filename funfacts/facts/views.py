from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from django.urls import reverse_lazy
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.views import LoginView, LogoutView, PasswordResetView, PasswordResetDoneView, PasswordResetConfirmView, PasswordResetCompleteView
from django.contrib.auth import login
from .models import Facts, Categories, Images
from .forms import SignupForm, FactForm, CategoryForm
import uuid


def home(request):
    todays_fact = Facts.objects.order_by('?')[0]
    latest_facts = Facts.objects.order_by('-date_added')
    todays_image_link = Images.objects.filter(fact_id=todays_fact.id).values_list('image_url', flat=True).first()
    fact_images = {}
    categories = Categories.objects.order_by('?')[:3]
    for f in latest_facts:
        fact_images[f] = Images.objects.filter(fact_id=f.id).values_list('image_url', flat=True).first()
    context = {
        'todays_fact': todays_fact,
        'todays_image_link': todays_image_link,
        'fact_images': fact_images,
        'categories': categories}
    return render(request, 'home.html', context)


def fact_detail(request, fact_id):
    try:
        image_url = Images.objects.get(fact_id=fact_id).image_url
    except Categories.DoesNotExist:
        image_url = ''

    try:
        fact = Facts.objects.get(id=fact_id)
    except Facts.DoesNotExist as e:
        return HttpResponse(f"Couldn't Find that fact. Soory :(")
    else:
        related_facts = Facts.objects.order_by('?')
        context = {'fact': fact, "related_facts": related_facts, 'image_url': image_url}
        return render(request, 'fact_detail.html', context)


def categories(request):
    categories = Categories.objects.all()
    context = {'categories': categories}
    return render(request, 'categories.html', context)


def edit_category(request, category_name):
    category = get_object_or_404(Categories, category_name=category_name)
    try:
        image_url = Categories.objects.get(category_name=category_name).image_url
    except Categories.DoesNotExist:
        image_url = ''
    if request.method == 'POST':
        form = CategoryForm(request.POST, instance=category)
        if form.is_valid():
            form.save()
            return redirect('/categories')
    else:
        form = CategoryForm(instance=category)
    
    context = {'form': form, 'category': category, 'image_url': image_url}
    return render(request, 'edit_category.html', context)


def random(request):
    categories = Categories.objects.all()
    fact = Facts.objects.order_by('?')[0]
    fact_image = Images.objects.filter(fact_id=fact.id).values_list('image_url', flat=True).first()
    context = {'facts': fact, 'fact_image': fact_image, 'categories': categories}
    return render(request, 'random.html', context)


def search(request):
    query = request.GET.get('q')
    if query:
        facts = Facts.objects.filter(fact_text__icontains=query)
        context = {'facts': facts, 'query': query}
        return render(request, 'search.html', context)
    else:
        return render(request, 'search.html')


def add_fact(request):
    if request.method == 'POST':
        text = request.POST.get('text')
        category_id = request.POST.get('category')


        # To-do: add the id of the fact to fact categories. 
        # Fact Does not have category.
        # Also use try-except block when adding fact.
        # Check length limits.
        category = Categories.objects.get(pk=category_id)
        fact = Facts(text=text, category=category)
        fact.save()

        return render(request, 'fact_added.html')
    else:
        categories = Categories.objects.all()
        context = {'categories': categories}
        return render(request, 'add_fact.html', context)


def edit_fact(request, fact_id):
    fact = get_object_or_404(Facts, id=fact_id)
    try:
        image = Images.objects.get(fact_id=fact).image_url
    except Images.DoesNotExist:
        image = ''
    if request.method == 'POST':
        form = FactForm(request.POST, instance=fact)
        if form.is_valid():
            form.save()
            return redirect('/admins')
    else:
        form = FactForm(instance=fact)

    context = {'form': form, 'fact': fact, 'image': image}
    return render(request, 'edit_fact.html', context)


def admin(request):
    # to-do: add more features
    facts = Facts.objects.all()
    facts_and_images = {}
    for fact in facts:
        facts_and_images[fact] = Images.objects.filter(fact_id=fact.id).values_list('image_url', flat=True).first()
    context = {'facts_and_images': facts_and_images}
    return render(request, 'admin.html', context)


def about(request):
    return render(request, 'about.html')


def contact(request):
    return render(request, 'contact.html')


def signup(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            user = form.save()
            # log the user in after they sign up
            login(request, user)
            return redirect('/')
    else:
        form = SignupForm()
    return render(request, 'signup.html', {'form': form})


class CustomLoginView(LoginView):
    template_name = 'login.html'
    success_url = reverse_lazy('home')
    redirect_authenticated_user = True

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['next'] = self.request.GET.get('next', '')
        return context

    def form_valid(self, form: AuthenticationForm) -> HttpResponse:
        messages.add_message(self.request, messages.SUCCESS, 'You have logged in successfully.')
        remember_me = form.cleaned_data.get('remember_me')
        if remember_me:
            self.request.session.set_expiry(settings.SESSION_COOCKIE_AGE)
        else:
            self.request.session.set_expiry(0)

        if self.request.POST.get('next'):
            self.success_url = self.request.POST.get('next')
        return super().form_valid(form)

    def form_invalid(self, form: AuthenticationForm) -> HttpResponse:
        print(messages)
        messages.add_message(self.request, messages.ERROR, f'Please enter a valid username and password.')
        return super().form_invalid(form)


class CustomLogoutView(LogoutView):
    pass


class CustomPasswordResetView(PasswordResetView):
    template_name = 'password_reset.html'
    email_template_name = 'password_reset_email.html'


class CustomPasswordResetConfirmView(PasswordResetConfirmView):
    template_name = 'password_reset_confirm.html'


class CustomPasswordResetCompleteView(PasswordResetCompleteView):
    template_name = 'password_reset_complete.html'


class CustomPasswordResetDoneView(PasswordResetDoneView):
    template_name = 'password_reset_done.html'
