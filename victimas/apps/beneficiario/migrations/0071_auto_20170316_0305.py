# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-16 03:05
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0070_hechobeneficiario'),
    ]

    operations = [
        migrations.CreateModel(
            name='DiscapacidadDetalle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('discapacidad', models.CharField(max_length=64)),
            ],
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='detDiscacidad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.DiscapacidadDetalle'),
        ),
    ]