# Generated by Django 3.1.7 on 2021-03-16 19:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_auto_20210317_0117'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='stream',
            field=models.CharField(default='', max_length=20),
        ),
    ]
