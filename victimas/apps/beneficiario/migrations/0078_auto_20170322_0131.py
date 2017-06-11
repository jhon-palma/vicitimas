# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-03-22 01:31
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0077_auto_20170316_0422'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hogar',
            name='bienes',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Bienes'),
        ),
        migrations.AlterField(
            model_name='hogar',
            name='ciudadResidencia',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Ciudad_residencia', to='beneficiario.Ciudad'),
        ),
        migrations.AlterField(
            model_name='hogar',
            name='servicioPublico',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.ServicioPublico'),
        ),
        migrations.AlterField(
            model_name='hogar',
            name='tipoVivienda',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='beneficiario.TipoVivienda'),
        ),
    ]
