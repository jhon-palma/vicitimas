# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-02-25 14:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0039_auto_20170222_0319'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='extranjero',
            field=models.NullBooleanField(),
        ),
    ]