# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-05 19:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0062_auto_20170305_1922'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='percibe',
            field=models.NullBooleanField(),
        ),
    ]