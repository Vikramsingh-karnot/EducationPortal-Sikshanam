# Generated by Django 3.1.7 on 2021-03-17 05:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0005_teacher_stream'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='student',
            name='last_name',
        ),
    ]
