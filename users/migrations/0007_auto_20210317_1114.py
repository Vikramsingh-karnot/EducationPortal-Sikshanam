# Generated by Django 3.1.7 on 2021-03-17 05:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0006_auto_20210317_1112'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='teacher',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='teacher',
            name='last_name',
        ),
    ]