from django.db import models
import uuid

class FoodCategory (models.Model):
  id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  name = models.CharField(max_length=128)
  description = models.TextField()
  updated = models.DateTimeField(auto_now=True)
  created = models.DateTimeField(auto_now_add=True)
  
  def __str__(self):
    return self.name

class Makro (models.Model):
  id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  protein = models.DecimalField(decimal_places=2, max_digits=16)
  fat = models.DecimalField(decimal_places=2, max_digits=16)
  carbohydrate = models.DecimalField(decimal_places=2, max_digits=16)
  updated = models.DateTimeField(auto_now=True)
  created = models.DateTimeField(auto_now_add=True)
  
  def __str__(self):
    return 'Proteins: {proteins}g, Fats:{fats}g, Carbohydrates: {carbs}g'.format(proteins=self.protein, fats=self.fat, carbs=self.carbohydrate)

class Nutrient (models.Model):
  id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  name = models.CharField(max_length=256)
  intake = models.DecimalField(decimal_places=2, max_digits=16, null=True, blank=True)
  unit_name = models.CharField(max_length=128)
  updated = models.DateTimeField(auto_now=True)
  created = models.DateTimeField(auto_now_add=True)
  
  def __str__(self):
    return self.name

class FoodNutrient (models.Model):
  id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  nutrient = models.ForeignKey(Nutrient, on_delete=models.SET_NULL, null=True)
  amount = models.DecimalField(decimal_places=2, max_digits=16)
  updated = models.DateTimeField(auto_now=True)
  created = models.DateTimeField(auto_now_add=True)
  
  def __str__(self):
    return '{name}: {amount}{unit}'.format(name=self.nutrient.name, amount=self.amount, unit=self.nutrient.unit_name)
  
class Food (models.Model):
  id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
  name = models.CharField(max_length=128)
  description = models.CharField(max_length=256)
  food_category = models.ForeignKey(FoodCategory, on_delete=models.SET_NULL, null=True)
  makros = models.ForeignKey(Makro, on_delete=models.SET_NULL, null=True)
  nutrients = models.ManyToManyField(FoodNutrient, related_name='nutrients', blank=True)

  updated = models.DateTimeField(auto_now=True)
  created = models.DateTimeField(auto_now_add=True)
  
  def __str__(self):
    return self.name

  class Meta:
    ordering = ["name"]
