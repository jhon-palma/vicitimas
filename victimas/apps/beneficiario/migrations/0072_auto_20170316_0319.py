# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-16 03:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0071_auto_20170316_0305'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hogar',
            name='barrio',
            field=models.CharField(max_length=40),
        ),
    ]
