# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-09 17:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0020_auto_20161206_0351'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='documentoCabeza',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
    ]
