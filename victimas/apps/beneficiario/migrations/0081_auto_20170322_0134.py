# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-22 01:34
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0080_auto_20170322_0133'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hogar',
            name='cantidadInodoro',
            field=models.SmallIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='hogar',
            name='diasAgua',
            field=models.SmallIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='hogar',
            name='horasAgua',
            field=models.SmallIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='hogar',
            name='totalPersonas',
            field=models.SmallIntegerField(null=True),
        ),
    ]
