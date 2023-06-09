# Generated by Django 3.1.7 on 2021-04-23 17:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0015_auto_20210403_0900'),
        ('portal', '0037_fypapers'),
    ]

    operations = [
        migrations.CreateModel(
            name='TyPapers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('students', models.ManyToManyField(to='users.Fybscit')),
                ('tname', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
            ],
        ),
        migrations.CreateModel(
            name='TyNotes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('students', models.ManyToManyField(to='users.Fybscit')),
                ('tname', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
            ],
        ),
        migrations.CreateModel(
            name='SyPapers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('students', models.ManyToManyField(to='users.Fybscit')),
                ('tname', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
            ],
        ),
        migrations.CreateModel(
            name='SyNotes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('students', models.ManyToManyField(to='users.Fybscit')),
                ('tname', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
            ],
        ),
        migrations.CreateModel(
            name='FyNotes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('students', models.ManyToManyField(to='users.Fybscit')),
                ('tname', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
            ],
        ),
    ]
