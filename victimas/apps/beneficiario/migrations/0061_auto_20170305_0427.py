# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-05 04:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0060_profesion_codigo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='semanas',
            field=models.CharField(max_length=15, null=True),
        ),
    ]
