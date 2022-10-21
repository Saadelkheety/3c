# Generated by Django 4.1.2 on 2022-10-18 17:41

from django.db import migrations, models
import django.db.models.deletion
import wagtail.blocks
import wagtail.contrib.forms.models
import wagtail.contrib.table_block.blocks
import wagtail.documents.blocks
import wagtail.fields
import wagtail.images.blocks


class Migration(migrations.Migration):

    dependencies = [
        ("taggit", "0005_auto_20220424_2025"),
        ("cms", "0006_formpage_thank_you_page"),
    ]

    operations = [
        migrations.AlterField(
            model_name="blogindexpagetag",
            name="tag",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="%(app_label)s_%(class)s_items",
                to="taggit.tag",
            ),
        ),
        migrations.AlterField(
            model_name="coursepage",
            name="body",
            field=wagtail.fields.StreamField(
                [
                    ("heading", wagtail.blocks.CharBlock(form_classname="full title")),
                    ("paragraph", wagtail.blocks.RichTextBlock()),
                    ("image", wagtail.images.blocks.ImageChooserBlock()),
                    ("document", wagtail.documents.blocks.DocumentChooserBlock()),
                    ("table", wagtail.contrib.table_block.blocks.TableBlock()),
                ],
                blank=True,
                use_json_field=True,
            ),
        ),
        migrations.AlterField(
            model_name="coursesindexpagetag",
            name="tag",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="%(app_label)s_%(class)s_items",
                to="taggit.tag",
            ),
        ),
        migrations.AlterField(
            model_name="formfield",
            name="choices",
            field=models.TextField(
                blank=True,
                help_text="Comma or new line separated list of choices. Only applicable in checkboxes, radio and dropdown.",
                verbose_name="choices",
            ),
        ),
        migrations.AlterField(
            model_name="formfield",
            name="default_value",
            field=models.TextField(
                blank=True,
                help_text="Default value. Comma or new line separated values supported for checkboxes.",
                verbose_name="default value",
            ),
        ),
        migrations.AlterField(
            model_name="formpage",
            name="from_address",
            field=models.EmailField(
                blank=True, max_length=255, verbose_name="from address"
            ),
        ),
        migrations.AlterField(
            model_name="formpage",
            name="to_address",
            field=models.CharField(
                blank=True,
                help_text="Optional - form submissions will be emailed to these addresses. Separate multiple addresses by comma.",
                max_length=255,
                validators=[wagtail.contrib.forms.models.validate_to_address],
                verbose_name="to address",
            ),
        ),
        migrations.AlterField(
            model_name="postpage",
            name="body",
            field=wagtail.fields.StreamField(
                [
                    ("heading", wagtail.blocks.CharBlock(form_classname="full title")),
                    ("paragraph", wagtail.blocks.RichTextBlock()),
                    ("image", wagtail.images.blocks.ImageChooserBlock()),
                    ("document", wagtail.documents.blocks.DocumentChooserBlock()),
                    ("table", wagtail.contrib.table_block.blocks.TableBlock()),
                ],
                blank=True,
                use_json_field=True,
            ),
        ),
    ]