# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-01-14 22:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0031_auto_20170114_2226'),
    ]

    operations = [
        migrations.AlterField(
            model_name='beneficiario',
            name='telefonoCelular',
            field=models.CharField(max_length=15, null=True),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='telefonoFijo',
            field=models.CharField(max_length=15, null=True),
        ),
    ]