from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from offers import views

urlpatterns = [
    path('kids/', views.KidList.as_view()),
    path('kids/<int:pk>/', views.KidDetail.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)
