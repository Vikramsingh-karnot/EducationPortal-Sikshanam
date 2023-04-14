# Generated by Django 3.2 on 2021-04-28 13:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0015_auto_20210403_0900'),
        ('portal', '0052_auto_20210428_1556'),
    ]

    operations = [
        migrations.CreateModel(
            name='FYPapers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('professor', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
                ('subjects', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.fysem1')),
            ],
        ),
        migrations.CreateModel(
            name='SYPapers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('professor', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
                ('subjects', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.fysem1')),
            ],
        ),
        migrations.CreateModel(
            name='TYPapers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('paper', models.FileField(upload_to='paper')),
                ('professor', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.teacher')),
                ('subjects', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.fysem1')),
            ],
        ),
        migrations.DeleteModel(
            name='Papers',
        ),
    ]