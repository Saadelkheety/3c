# Generated by Django 3.1.8 on 2021-04-29 23:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0060_fix_workflow_unique_constraint'),
        ('cms', '0005_formfield_formpage'),
    ]

    operations = [
        migrations.AddField(
            model_name='formpage',
            name='thank_you_page',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='wagtailcore.page'),
        ),
    ]
