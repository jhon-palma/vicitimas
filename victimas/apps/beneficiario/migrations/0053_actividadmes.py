# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-04 15:28
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0052_auto_20170303_0256'),
    ]

    operations = [
        migrations.CreateModel(
            name='ActividadMes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('actividad', models.CharField(max_length=60)),
            ],
        ),
    ]