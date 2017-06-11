# -*- coding: utf-8 -*-
# Generated by Django 1.10.2 on 2016-11-04 04:50
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Beneficiario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numeroDocumento', models.IntegerField()),
                ('nombreUno', models.CharField(max_length=50)),
                ('nombreDos', models.CharField(max_length=50)),
                ('apellidoUno', models.CharField(max_length=50)),
                ('apellidoDos', models.CharField(max_length=50)),
                ('direccion', models.CharField(max_length=50)),
                ('barrio', models.CharField(max_length=30)),
                ('zonaPredio', models.CharField(choices=[('U', 'Urbano'), ('R', 'Rural')], max_length=1)),
                ('estratoPredio', models.IntegerField(choices=[('1', 'BAJO-BAJO'), ('2', 'BAJO'), ('3', 'MEDIO-BAJO'), ('4', 'MEDIO'), ('5', 'MEDIO-ALTO'), ('6', 'ALTO')])),
                ('fechaNacimiento', models.DateField(null=True)),
                ('genero', models.CharField(choices=[('M', 'M'), ('F', 'F')], max_length=1)),
                ('email', models.EmailField(max_length=254)),
                ('telefonoFijo', models.IntegerField()),
                ('telefonoCelular', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Ciudad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=3)),
                ('ciudad', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name': 'Ciudad',
                'verbose_name_plural': 'Ciudades',
            },
        ),
        migrations.CreateModel(
            name='CondicionSexual',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('condicion', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('departamento', models.CharField(max_length=50)),
            ],
            options={
                'verbose_name': 'Departamento',
                'verbose_name_plural': 'Departamentos',
            },
        ),
        migrations.CreateModel(
            name='Discapacidad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('discapacidad', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='EnfoqueDiferencial',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('enfoque', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Eps',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('eps', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='EstadoCivil',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=1)),
                ('estadoCivil', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Etnia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('etnia', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='HechoVictimizante',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=1)),
                ('hecho', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='InstitucionEducativa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('institucion', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='JefeHogar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jefe', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Beneficiario')),
            ],
        ),
        migrations.CreateModel(
            name='NivelEducativo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=1)),
                ('hecho', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Parentesco',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('parentesco', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('perfil', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Regimen',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=1)),
                ('regimen', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='TipoDocumento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('tipo', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='TipoVivienda',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=1)),
                ('tipoVivienda', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreUno', models.CharField(max_length=50)),
                ('nombreDos', models.CharField(max_length=50)),
                ('apellidoUno', models.CharField(max_length=50)),
                ('apellidoDos', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=254)),
                ('password', models.CharField(max_length=128)),
                ('imagen', models.TextField()),
                ('perfil', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Perfil')),
            ],
        ),
        migrations.AddField(
            model_name='ciudad',
            name='departamento',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Departamento'),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='ciudad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Ciudad'),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='condicionSexual',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.CondicionSexual'),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='discapacidad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Discapacidad'),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='parentesco',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Parentesco'),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='perteneciaEtnica',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.Etnia'),
        ),
        migrations.AddField(
            model_name='beneficiario',
            name='tipoDocumento',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='beneficiario.TipoDocumento'),
        ),
    ]