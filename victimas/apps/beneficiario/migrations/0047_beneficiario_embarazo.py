# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-02-26 23:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0046_beneficiario_detdiscacidad'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='embarazo',
            field=models.NullBooleanField(),
        ),
    ]
