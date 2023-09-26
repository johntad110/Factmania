from django import forms
from django.contrib.auth.forms import UserCreationForm
from facts.models import User, UserProfile, Facts, Images, Categories


class SignupForm(UserCreationForm):
    email = forms.EmailField(required=True, error_messages={'invalid': 'Please enter a valid email address.'})

    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2')

    
    def clean_email(self):
        email = self.cleaned_data.get('email')
        if UserProfile.objects.filter(email=email).exists():
            raise forms.ValidationError('This email address is already in use.')
        return email


class FactForm(forms.ModelForm):
    image_url = forms.CharField(max_length=255, required=False)

    class Meta:
        model = Facts
        fields = ['fact_title', 'fact_text', 'fact_discription', 'source']

    def save(self, commit=True):
        fact = super().save(commit=False)
        image_url = self.cleaned_data.get('image_url')

        if image_url:
            if fact.pk is not None:
                try:
                    image = Images.objects.get(fact_id=fact)
                    image.image_url = image_url
                    image.save()
                except Images.DoesNotExist:
                    image = Images(fact_id=fact, image_url=image_url)
                    image.save()
            else:
                image = Images(fact_id=fact, image_url=image_url)
                image.save()

        if commit:
            fact.save()
        
        return fact

class CategoryForm(forms.ModelForm):
    class Meta:
        model = Categories
        fields = ['category_name', 'image_url']