# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-04 15:51
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0058_actividadmes_codigo'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='semanas',
            field=models.IntegerField(null=True),
        ),
    ]
