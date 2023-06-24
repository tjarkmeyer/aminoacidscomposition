from django.contrib import admin

# Register your models here.

from .models import FoodCategory, Makro, Nutrient, FoodNutrient, Food

admin.site.register(FoodCategory)
admin.site.register(Makro)
admin.site.register(Nutrient)
admin.site.register(Food)
admin.site.register(FoodNutrient)
