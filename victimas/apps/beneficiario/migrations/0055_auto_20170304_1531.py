# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-04 15:31
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0054_remove_beneficiario_trabajaactualmente'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='actividadMes',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.ActividadMes'),
        ),
     
    ]
