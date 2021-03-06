# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-02-19 19:28
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0036_auto_20170219_1621'),
    ]

    operations = [
        migrations.CreateModel(
            name='Ingresos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ingresos', models.CharField(max_length=90)),
            ],
        ),
        migrations.CreateModel(
            name='Ocupacion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ocupacion', models.CharField(max_length=90)),
            ],
        ),
        migrations.CreateModel(
            name='Profesion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('profesion', models.CharField(max_length=90)),
            ],
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='trabajaActualmente',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='institucioneducativa',
            name='institucion',
            field=models.CharField(max_length=80),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='ingresos',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Ingresos'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='ocupacion',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Ocupacion'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='profesion',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Profesion'),
            preserve_default=False,
        ),
    ]
