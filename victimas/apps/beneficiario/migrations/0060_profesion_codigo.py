# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-04 16:26
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0059_beneficiario_semanas'),
    ]

    operations = [
        migrations.AddField(
            model_name='profesion',
            name='codigo',
            field=models.CharField(default=1, max_length=5),
            preserve_default=False,
        ),
    ]
