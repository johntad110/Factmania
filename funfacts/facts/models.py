from typing import Any, Iterable, Optional
from django.db import models
from django.contrib.auth.hashers import make_password
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin
import uuid


class UserManager(BaseUserManager):
    def create_user(self, username, password=None, **extra_fields):
        user = self.model(username=username, **extra_fields)
        user.password = make_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, password=None, **extrafields):
        extrafields.setdefault('is_staff', True)
        extrafields.setdefault('is_active', True)
        extrafields.setdefault('is_superuser', True)
        return self.create_user(username, password, **extrafields)


class User(AbstractBaseUser):
    username = models.CharField(max_length=30, unique=True)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    last_login = models.DateTimeField(null=True)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []

    objects = UserManager()

    def __str__(self):
        return self.username

    class Meta:
        verbose_name = 'user'
        verbose_name_plural = 'users'


class UserProfile(models.Model):
    user = models.OneToOneField(
        User, on_delete=models.CASCADE, related_name='profile')
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    dob = models.DateField(null=True)
    gender = models.CharField(max_length=15)
    email = models.EmailField()
    phone_number = models.CharField(max_length=15)
    bio = models.TextField()
    profile_picture = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.first_name} {self.last_name}'s Profile"

    class Meta:
        verbose_name = 'user profile'
        verbose_name_plural = 'user profiles'


class UserActivity(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    activity_date = models.DateTimeField()
    activity_type = models.CharField(max_length=20)
    activity_details = models.TextField()

    def __str__(self):
        return f"{self.user.username}'s Activity"


class UserPreferences(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    age = models.IntegerField()
    location = models.CharField(max_length=100)
    preferences = models.TextField()

    def __str__(self):
        return f"{self.user.username}'s Preferences"


class UUIDCharField(models.CharField):
    def __init__(self, *args, **kwargs):
        kwargs.setdefault('max_length', 36)
        super().__init__(*args, **kwargs)

    def from_db_value(self, value, expression, connection):
        if value is not None:
            return uuid.UUID(value)
        return value

    def to_python(self, value):
        if isinstance(value, uuid.UUID):
            return value
        if value is not None:
            return uuid.UUID(value)
        return value

    def get_prep_value(self, value):
        if isinstance(value, uuid.UUID):
            return str(value)
        return value


class Facts(models.Model):
    # note: fact_text is the fact's short description and
    # fact description is the long description
    # the only necessary fiesld for da fact is it's short description
    id = UUIDCharField(primary_key=True, default=uuid.uuid4,
                       editable=False, unique=True)
    fact_title = models.CharField(max_length=128, null=True)
    fact_text = models.CharField(max_length=500, null=False)
    fact_discription = models.TextField(null=True)
    source = models.CharField(max_length=255, null=True)
    date_added = models.DateTimeField(auto_now_add=True)

    def __str__(self) -> str:
        return self.fact_text


class Categories(models.Model):
    category_name = models.CharField(max_length=255, unique=True)
    facts = models.ManyToManyField(Facts, related_name='categories')
    image_url = models.CharField(
        max_length=255,
        null=False,
        default='https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM='
    )

    def __str__(self) -> str:
        return self.category_name

    class Meta:
        verbose_name_plural = "categories"


class FactCategories(models.Model):
    fact_id = models.ForeignKey(Facts, on_delete=models.CASCADE)
    category_id = models.ForeignKey(Categories, on_delete=models.CASCADE)


class Ratings(models.Model):
    id = models.BigIntegerField(primary_key=True)
    fact_id = models.ForeignKey(Facts, on_delete=models.CASCADE)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    rating = models.PositiveIntegerField(null=False)
    date_rated = models.DateTimeField(auto_now_add=True)


class Comments(models.Model):
    id = models.BigIntegerField(primary_key=True)
    fact_id = models.ForeignKey(Facts, on_delete=models.CASCADE)
    users_id = models.ForeignKey(User, on_delete=models.CASCADE)
    comment_text = models.TextField()
    date_commented = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self) -> str:
        return self.comment_text


class Images(models.Model):
    fact_id = models.ForeignKey(Facts, on_delete=models.CASCADE)
    image_url = models.CharField(max_length=255, null=False)
