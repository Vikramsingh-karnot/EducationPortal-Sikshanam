# Generated by Django 3.1.7 on 2021-04-20 16:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0020_lydiamonday_class'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='lydiamonday',
            name='Class',
        ),
    ]