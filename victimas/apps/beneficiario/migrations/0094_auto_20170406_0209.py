# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-04-06 02:09
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0093_auto_20170325_1541'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hogar',
            name='ocupaVivienda',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.OcupaVivienda'),
        ),
    ]
