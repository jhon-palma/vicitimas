# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-09 17:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0021_beneficiario_documentocabeza'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='cabeza',
            field=models.BooleanField(default=False),
        ),
    ]
