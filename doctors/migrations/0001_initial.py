# Generated by Django 3.1.6 on 2021-02-24 23:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Doctors',
            fields=[
                ('id_Doctors', models.AutoField(primary_key=True, serialize=False)),
                ('name_Doctors', models.CharField(blank=True, max_length=45, null=True)),
                ('passwords', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'doctors',
                'managed': False,
            },
        ),
    ]
