# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-14 22:26
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0030_auto_20170114_2211'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='codigoUV',
            field=models.CharField(max_length=15, null=True),
        ),
    ]
