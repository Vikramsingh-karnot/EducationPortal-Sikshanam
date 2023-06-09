# Generated by Django 3.1.7 on 2021-04-18 13:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0007_auto_20210404_1406'),
    ]

    operations = [
        migrations.CreateModel(
            name='LydiaMonday',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('SubName', models.CharField(max_length=20)),
                ('SubStatus', models.CharField(max_length=20)),
                ('Time', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='FyMonday',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('SubName', models.CharField(max_length=20)),
                ('SubTeacher', models.CharField(max_length=20)),
                ('Time', models.CharField(max_length=20)),
                ('subStatus', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiamonday')),
            ],
        ),
    ]
