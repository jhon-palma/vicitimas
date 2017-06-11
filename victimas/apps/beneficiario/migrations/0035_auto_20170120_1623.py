# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-20 16:23
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0034_auto_20170120_1600'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='ciudadDeclara',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Ciudad_declara', to='beneficiario.Ciudad'),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='ciudadPredio',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Ciudad_predio', to='beneficiario.Ciudad'),
        ),
    ]
