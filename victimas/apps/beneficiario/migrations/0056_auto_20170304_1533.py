# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-04 15:33
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0055_auto_20170304_1531'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='detDiscacidad',
            field=models.CharField(max_length=65),
        ),
    ]
