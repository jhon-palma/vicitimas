# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-14 21:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0023_auto_20170109_1955'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='codigoUV',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
