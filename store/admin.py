from django.contrib import admin
from store.models import Product, PaymentChannel, Order

# Register your models here.
admin.site.register(Product)
admin.site.register(PaymentChannel)
admin.site.register(Order)