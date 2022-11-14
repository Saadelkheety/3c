from django.db import models
from django.core import validators
from modelcluster.fields import ParentalKey
from wagtail.admin.panels import (
    FieldPanel, FieldRowPanel,
    InlinePanel, MultiFieldPanel
)
from wagtail.fields import RichTextField
from wagtail.contrib.forms.models import AbstractEmailForm, AbstractFormField
from wagtail.contrib.forms.panels import FormSubmissionsPanel
from phonenumber_field.modelfields import PhoneNumberField


class Product(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=256, unique=True)
    description = models.TextField(blank=True)
    price = models.DecimalField(max_digits=6,decimal_places=2,validators=[validators.MinValueValidator(0.0)])
    currency = models.CharField(max_length=3)
    discounted_price_amount = models.DecimalField(
        max_digits=6,
        decimal_places=2,
        blank=True,
        null=True,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name} - {self.price}, after discount: {self.get_final_price()}"

    def get_final_price(self):
        return self.price - self.discounted_price_amount


class PaymentChannel(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=256, unique=True)
    description = models.TextField(blank=True)
    integration_id = models.PositiveIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name} - integration_id:{integration_id}"


class Order(models.Model):
    id = models.AutoField(primary_key=True)
    integration_order_id = models.PositiveIntegerField(help_text="Order Id from paymob")
    status = models.CharField(max_length=64, default="UNPAID", help_text="Payment status")
    product = models.ForeignKey('Product', on_delete=models.DO_NOTHING, help_text="Choose product to buy", related_name="products")
    payment_method = models.ForeignKey('PaymentChannel', on_delete=models.DO_NOTHING, help_text="Payment Method", related_name="payment_methods")
    client_fname = models.CharField(max_length=128, help_text="First Name")
    client_lname = models.CharField(max_length=128, help_text="Last Name")
    client_phone = PhoneNumberField(max_length=14, help_text="Phone Number")
    client_email = models.EmailField(help_text="Your Email")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.client_fname + ' ' + self.client_lname} Order- integration_order_id:{self.integration_order_id}"



class FormField(AbstractFormField):
    page = ParentalKey('OrderPage', on_delete=models.CASCADE, related_name='form_fields')


class OrderPage(AbstractEmailForm):
    template = 'order.html'
    intro = RichTextField(blank=True)
    thank_you_text = RichTextField(blank=True)

    form_title = models.CharField(max_length=255, blank=True)
    submit_button = models.CharField(max_length=255, default='Submit') 

    # intro_block

    content_panels = AbstractEmailForm.content_panels + [
        FormSubmissionsPanel(),
        FieldPanel('intro'),
        FieldPanel('form_title'),
        InlinePanel('form_fields', label="Form fields"),
        FieldPanel('thank_you_text'),
        FieldPanel('submit_button'),
        MultiFieldPanel([
            FieldRowPanel([
                FieldPanel('from_address', classname="col6"),
                FieldPanel('to_address', classname="col6"),
            ]),
            FieldPanel('subject'),
        ], "Email"),
    ]