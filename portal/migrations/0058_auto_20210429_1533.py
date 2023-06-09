# Generated by Django 2.2.7 on 2021-04-29 10:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0057_delete_fysubiinotifications'),
    ]

    operations = [
        migrations.AlterField(
            model_name='synotifications',
            name='subjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.SYSem3'),
        ),
        migrations.AlterField(
            model_name='tynotifications',
            name='subjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.TYSem5'),
        ),
    ]
