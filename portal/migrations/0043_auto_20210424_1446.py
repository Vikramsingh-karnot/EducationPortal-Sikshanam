# Generated by Django 3.1.7 on 2021-04-24 09:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0042_auto_20210424_1439'),
    ]

    operations = [
        migrations.AlterField(
            model_name='notes',
            name='note',
            field=models.FileField(upload_to='notes'),
        ),
    ]