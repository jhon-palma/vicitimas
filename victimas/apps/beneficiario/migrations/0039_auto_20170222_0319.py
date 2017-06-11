# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-02-22 03:19
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('beneficiario', '0038_auto_20170220_0118'),
    ]

    operations = [
        migrations.CreateModel(
            name='Bienes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bienes', models.CharField(max_length=60)),
            ],
        ),
        migrations.CreateModel(
            name='hogar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.IntegerField()),
                ('zonaPredio', models.CharField(choices=[('U', 'Centro poblado'), ('R', 'Rural disperso'), ('C', 'Cabecera')], max_length=1)),
                ('direccion', models.CharField(max_length=50)),
                ('barrio', models.CharField(max_length=30)),
                ('materialVivienda', models.CharField(max_length=50)),
                ('materialPiso', models.CharField(max_length=50)),
                ('estratoPredio', models.IntegerField(choices=[('1', 'BAJO-BAJO'), ('2', 'BAJO'), ('3', 'MEDIO-BAJO'), ('4', 'MEDIO'), ('5', 'MEDIO-ALTO'), ('6', 'ALTO')])),
                ('basura', models.CharField(max_length=50)),
                ('cuartos', models.SmallIntegerField()),
                ('grupos', models.SmallIntegerField()),
                ('cuartosOcupa', models.SmallIntegerField()),
                ('cuartosDuerme', models.SmallIntegerField()),
                ('Inodoro', models.CharField(max_length=50)),
                ('ubicaInodoro', models.CharField(max_length=50)),
                ('usoInodoro', models.CharField(max_length=50)),
                ('cantidadInodoro', models.SmallIntegerField()),
                ('ducha', models.NullBooleanField()),
                ('origenAgua', models.CharField(max_length=50)),
                ('diasAgua', models.SmallIntegerField()),
                ('horasAgua', models.SmallIntegerField()),
                ('preparar', models.CharField(max_length=50)),
                ('cocina', models.CharField(max_length=50)),
                ('combustibleCocina', models.CharField(max_length=50)),
                ('alumbrado', models.CharField(max_length=50)),
                ('stelefono', models.CharField(max_length=50)),
                ('totalPersonas', models.SmallIntegerField()),
                ('bienes', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Bienes')),
                ('ciudadResidencia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='Ciudad_residencia', to='beneficiario.Ciudad')),
            ],
        ),
        migrations.CreateModel(
            name='ServicioPublico',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=1)),
                ('servicioPublico', models.CharField(max_length=60)),
            ],
        ),
        migrations.RemoveField(
            model_name='beneficiario',
            name='barrio',
        ),
        migrations.RemoveField(
            model_name='beneficiario',
            name='ciudadResidencia',
        ),
        migrations.RemoveField(
            model_name='beneficiario',
            name='direccion',
        ),
        migrations.RemoveField(
            model_name='beneficiario',
            name='estratoPredio',
        ),
        migrations.RemoveField(
            model_name='beneficiario',
            name='tipoVivienda',
        ),
        migrations.RemoveField(
            model_name='beneficiario',
            name='zonaPredio',
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='estudiaActualmente',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='familiasAccion',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='kitEscolar',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='otrosEstudios',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='predioAbandonado',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='revictimizado',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='trabajaActualmente',
            field=models.NullBooleanField(),
        ),
        migrations.AlterField(
            model_name='beneficiario',
            name='uniforme',
            field=models.NullBooleanField(),
        ),
        migrations.AddField(
            model_name='hogar',
            name='servicioPublico',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.ServicioPublico'),
        ),
        migrations.AddField(
            model_name='hogar',
            name='tipoVivienda',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.TipoVivienda'),
        ),
    ]
