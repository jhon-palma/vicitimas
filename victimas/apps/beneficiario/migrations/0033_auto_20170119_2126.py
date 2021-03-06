# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-19 21:26
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0032_auto_20170114_2255'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='beneficiario',
            name='cabeza_hogar_id',
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='ciudadPredio',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='Ciudad_predio', to='beneficiario.Ciudad'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='predioAbandonado',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='restitucionPredio',
            field=models.BooleanField(default=False),
        ),
    ]
