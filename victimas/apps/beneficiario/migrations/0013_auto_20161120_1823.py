# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-20 18:23
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0012_auto_20161120_1808'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario_grupohogar',
            name='grupoHogar',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.GrupoHogar'),
        ),
        migrations.AlterField(
            model_name='hechovictimizante',
            name='hecho',
            field=models.CharField(max_length=100),
        ),
    ]
