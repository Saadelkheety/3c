from django.views.generic.edit import CreateView
from store.models import Order, Product, PaymentChannel

class OrderCreateView(CreateView):
    template_name = "order.html"
    model = Order
    fields = ['client_fname', 'client_lname', 'client_phone', 'client_email', 'product', 'payment_method']

    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["products"] = Product.objects.all()
        return context