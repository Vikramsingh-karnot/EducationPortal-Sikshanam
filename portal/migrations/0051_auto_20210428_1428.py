# Generated by Django 3.2 on 2021-04-28 08:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0050_auto_20210426_1631'),
    ]

    operations = [
        migrations.AddField(
            model_name='notes',
            name='fysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.fysem1'),
        ),
        migrations.AddField(
            model_name='notes',
            name='sysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.sysem3'),
        ),
        migrations.AddField(
            model_name='notes',
            name='tysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.tysem5'),
        ),
        migrations.AddField(
            model_name='notifications',
            name='fysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.fysem1'),
        ),
        migrations.AddField(
            model_name='notifications',
            name='sysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.sysem3'),
        ),
        migrations.AddField(
            model_name='notifications',
            name='tysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.tysem5'),
        ),
        migrations.AddField(
            model_name='papers',
            name='fysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.fysem1'),
        ),
        migrations.AddField(
            model_name='papers',
            name='sysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.sysem3'),
        ),
        migrations.AddField(
            model_name='papers',
            name='tysubjects',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.tysem5'),
        ),
    ]
