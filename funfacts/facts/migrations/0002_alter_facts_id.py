# Generated by Django 4.2.1 on 2023-06-07 12:54

from django.db import migrations
import facts.models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ('facts', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facts',
            name='id',
            field=facts.models.UUIDCharField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False, unique=True),
        ),
    ]
