# Generated by Django 4.2.5 on 2023-09-08 10:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facts', '0004_alter_categories_category_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='images',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
