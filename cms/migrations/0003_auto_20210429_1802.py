# Generated by Django 3.1.8 on 2021-04-29 16:02

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.contrib.taggit
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('taggit', '0003_taggeditem_add_unique_index'),
        ('cms', '0002_auto_20210429_1748'),
    ]

    operations = [
        migrations.CreateModel(
            name='CoursesIndexPageTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content_object', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='course_tags', to='cms.coursepage')),
                ('tag', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='cms_coursesindexpagetag_items', to='taggit.tag')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AlterField(
            model_name='coursepage',
            name='tags',
            field=modelcluster.contrib.taggit.ClusterTaggableManager(blank=True, help_text='A comma-separated list of tags.', through='cms.CoursesIndexPageTag', to='taggit.Tag', verbose_name='Tags'),
        ),
    ]
