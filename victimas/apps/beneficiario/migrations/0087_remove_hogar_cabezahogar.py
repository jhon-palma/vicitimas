# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-23 02:28
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0086_auto_20170323_0228'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hogar',
            name='cabezaHogar',
        ),
    ]