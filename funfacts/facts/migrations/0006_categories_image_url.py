# Generated by Django 4.2.5 on 2023-09-26 06:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facts', '0005_alter_images_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='categories',
            name='image_url',
            field=models.CharField(default='https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=', max_length=255),
        ),
    ]
