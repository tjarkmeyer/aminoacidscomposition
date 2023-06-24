from django.urls import path
from . import views

urlpatterns = [
  path('', views.routes),
  path('foods/', views.foods),
  path('foods/<str:pk>/', views.food),
  path('foods/<str:pk>/nutrients/', views.foodNutrients),
]
