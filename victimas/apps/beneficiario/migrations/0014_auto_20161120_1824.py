# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-20 18:24
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0013_auto_20161120_1823'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario_grupohogar',
            name='grupoHogar',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.GrupoHogar'),
        ),
        migrations.AlterField(
            model_name='niveleducativo',
            name='nivel',
            field=models.CharField(max_length=60),
        ),
    ]