# Generated by Django 3.1.7 on 2021-04-04 03:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0015_auto_20210403_0900'),
        ('portal', '0005_auto_20210403_1034'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='fysem1',
            name='subTeacher',
        ),
        migrations.AddField(
            model_name='fysem1',
            name='subTeacher',
            field=models.ManyToManyField(to='users.Teacher'),
        ),
    ]
