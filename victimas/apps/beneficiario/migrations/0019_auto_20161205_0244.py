# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-12-05 02:44
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0018_auto_20161121_1822'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='codigoUV',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='beneficiario_grupohogar',
            name='grupoHogar',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.GrupoHogar'),
        ),
    ]
