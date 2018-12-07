# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2017-05-16 22:32
from __future__ import unicode_literals

import django.db.models.deletion
import jsonfield.fields
import mptt.fields
from django.db import migrations
from django.db import models

import kolibri.core.content.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ChannelMetadataCache',
            fields=[
                ('id', kolibri.core.content.models.UUIDField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=200)),
                ('description', models.CharField(blank=True, max_length=400)),
                ('author', models.CharField(blank=True, max_length=400)),
                ('version', models.IntegerField(default=0)),
                ('thumbnail', models.TextField(blank=True)),
                ('root_pk', kolibri.core.content.models.UUIDField()),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
