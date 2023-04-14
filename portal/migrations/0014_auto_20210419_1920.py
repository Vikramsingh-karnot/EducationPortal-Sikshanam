# Generated by Django 3.1.7 on 2021-04-19 13:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('portal', '0013_auto_20210419_1830'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fyfriday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronfriday'),
        ),
        migrations.AlterField(
            model_name='fyfriday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokfriday'),
        ),
        migrations.AlterField(
            model_name='fyfriday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiafriday'),
        ),
        migrations.AlterField(
            model_name='fyfriday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissafriday'),
        ),
        migrations.AlterField(
            model_name='fyfriday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanafriday'),
        ),
        migrations.AlterField(
            model_name='fyfriday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.royfriday'),
        ),
        migrations.AlterField(
            model_name='fyfriday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashfriday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronsaturday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashoksaturday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiasaturday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissasaturday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanasaturday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roysaturday'),
        ),
        migrations.AlterField(
            model_name='fysaturday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashsaturday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronthursday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokthursday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiathursday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissathursday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanathursday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roythursday'),
        ),
        migrations.AlterField(
            model_name='fythursday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashthursday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aarontuesday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashoktuesday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiatuesday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissatuesday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanatuesday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roytuesday'),
        ),
        migrations.AlterField(
            model_name='fytuesday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashtuesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronwednesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokwednesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiawednesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissawednesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanawednesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roywednesday'),
        ),
        migrations.AlterField(
            model_name='fywednesday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashwednesday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronfriday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokfriday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiafriday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissafriday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanafriday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.royfriday'),
        ),
        migrations.AlterField(
            model_name='syfriday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashfriday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronmonday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokmonday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiamonday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissamonday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanamonday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roymonday'),
        ),
        migrations.AlterField(
            model_name='symonday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashmonday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronsaturday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashoksaturday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiasaturday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissasaturday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanasaturday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roysaturday'),
        ),
        migrations.AlterField(
            model_name='sysaturday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashsaturday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronthursday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokthursday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiathursday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissathursday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanathursday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roythursday'),
        ),
        migrations.AlterField(
            model_name='sythursday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashthursday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aarontuesday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashoktuesday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiatuesday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissatuesday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanatuesday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roytuesday'),
        ),
        migrations.AlterField(
            model_name='sytuesday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashtuesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronwednesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokwednesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiawednesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissawednesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanawednesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roywednesday'),
        ),
        migrations.AlterField(
            model_name='sywednesday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashwednesday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronfriday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokfriday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiafriday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissafriday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanafriday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.royfriday'),
        ),
        migrations.AlterField(
            model_name='tyfriday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashfriday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronmonday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokmonday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiamonday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissamonday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanamonday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roymonday'),
        ),
        migrations.AlterField(
            model_name='tymonday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashmonday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronsaturday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashoksaturday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiasaturday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissasaturday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanasaturday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roysaturday'),
        ),
        migrations.AlterField(
            model_name='tysaturday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashsaturday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronthursday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokthursday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiathursday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissathursday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanathursday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roythursday'),
        ),
        migrations.AlterField(
            model_name='tythursday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashthursday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aarontuesday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashoktuesday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiatuesday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissatuesday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanatuesday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roytuesday'),
        ),
        migrations.AlterField(
            model_name='tytuesday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashtuesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='AaronStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.aaronwednesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='AshokStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.ashokwednesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='LydiaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.lydiawednesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='MelissaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.melissawednesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='RachanaStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.rachanawednesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='RoyStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.roywednesday'),
        ),
        migrations.AlterField(
            model_name='tywednesday',
            name='SubhashStatus',
            field=models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, to='portal.subhashwednesday'),
        ),
    ]
