# Generated by Django 3.1.7 on 2021-04-20 17:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0022_auto_20210420_2208'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fyfriday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='LydiaStatus',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
    ]