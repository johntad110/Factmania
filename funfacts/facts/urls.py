from django.urls import path
from . import views
from .views import CustomLoginView, CustomLogoutView, CustomPasswordResetView, CustomPasswordResetDoneView, CustomPasswordResetConfirmView, CustomPasswordResetCompleteView


urlpatterns = [
    path('', views.home, name='home'),
    path('fact/<str:fact_id>', views.fact_detail, name='fact'),
    path('random/', views.random, name='random'),
    path('categories/', views.categories, name='categories'),
    path('edit_category/<str:category_name>', views.edit_category, name='edit_category'),
    path('search/', views.search, name='search'),
    path('add_fact/', views.add_fact, name='add_fact'),
    path('edit_fact/<str:fact_id>', views.edit_fact, name='edit_fact'),
    path('admins/', views.admin, name='admin'),
    path('login/', CustomLoginView.as_view(), name='login'),
    path('logout/', CustomLogoutView.as_view(), name='logout'),
    path('password_reset/', CustomPasswordResetView.as_view(), name='password_reset'),
    path('password_reset/done/', CustomPasswordResetDoneView.as_view(), name='password_reset_done'),
    path('reset/<uidb64>/<token>/', CustomPasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path('reset/done/', CustomPasswordResetCompleteView.as_view(), name='password_reset_complete'),
    path('about/', views.about, name="about"),
    path('contact/', views.contact, name="contact"),
    path('signup/', views.signup, name='signup')
]