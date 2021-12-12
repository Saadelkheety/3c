from django.contrib import admin
from offers.models import Kid
# Register your models here.

class KidAdmin(admin.ModelAdmin):
    list_display = ("name", "age", "phone_number", "email", "school")


admin.site.register(Kid, KidAdmin)
