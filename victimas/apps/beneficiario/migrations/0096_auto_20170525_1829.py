# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-05-25 18:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0095_carnet'),
    ]

    operations = [
        migrations.AddField(
            model_name='beneficiario',
            name='archivo',
            field=models.FileField(blank=True, null=True, upload_to='archivos/'),
        ),
        migrations.AddField(
            model_name='hogar',
            name='recibo',
            field=models.FileField(blank=True, null=True, upload_to='archivos/'),
        ),
    ]