# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-05 19:22
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0061_auto_20170305_0427'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='ciudadPredio',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Ciudad_predio', to='beneficiario.Ciudad'),
        ),
    ]
