# Generated by Django 4.1.2 on 2022-10-31 23:31

from django.db import migrations, models
import django.db.models.deletion
import phonenumber_field.modelfields


class Migration(migrations.Migration):

    dependencies = [
        ("store", "0002_paymentchannel_product_orderpage_form_title_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="order",
            name="client_email",
            field=models.EmailField(help_text="Your Email", max_length=254),
        ),
        migrations.AlterField(
            model_name="order",
            name="client_fname",
            field=models.CharField(help_text="First Name", max_length=128),
        ),
        migrations.AlterField(
            model_name="order",
            name="client_lname",
            field=models.CharField(help_text="Last Name", max_length=128),
        ),
        migrations.AlterField(
            model_name="order",
            name="client_phone",
            field=phonenumber_field.modelfields.PhoneNumberField(
                help_text="Phone Number", max_length=14, region=None
            ),
        ),
        migrations.AlterField(
            model_name="order",
            name="integration_order_id",
            field=models.PositiveIntegerField(help_text="Order Id from paymob"),
        ),
        migrations.AlterField(
            model_name="order",
            name="payment_method",
            field=models.ForeignKey(
                help_text="Payment Method",
                on_delete=django.db.models.deletion.DO_NOTHING,
                to="store.paymentchannel",
            ),
        ),
        migrations.AlterField(
            model_name="order",
            name="product",
            field=models.ForeignKey(
                help_text="Choose product to buy",
                on_delete=django.db.models.deletion.DO_NOTHING,
                to="store.product",
            ),
        ),
        migrations.AlterField(
            model_name="order",
            name="status",
            field=models.CharField(
                default="UNPAID", help_text="Payment status", max_length=64
            ),
        ),
    ]