from django.urls import path
from .views import OrderCreateView


urlpatterns = [
path("order/new/", OrderCreateView.as_view(), name="new_order")
]