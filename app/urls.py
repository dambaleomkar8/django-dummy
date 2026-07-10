from django.urls import path
from .views import home

urlpatterns = [
    path('home2/app/', home, name='home'),

]