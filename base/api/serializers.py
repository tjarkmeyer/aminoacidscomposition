from rest_framework.serializers import ModelSerializer
from base.models import Food, FoodNutrient, Makro, FoodCategory, Nutrient

class NutrientSerializer(ModelSerializer):
  class Meta:
    model = Nutrient
    fields = '__all__'


class FoodNutrientSerializer(ModelSerializer):
  nutrient = NutrientSerializer()
  class Meta:
    model = FoodNutrient
    fields = '__all__'

class MakroSerializer(ModelSerializer):
  class Meta:
    model = Makro
    fields = '__all__'

class FoodCategorySerializer(ModelSerializer):
  class Meta:
    model = FoodCategory
    fields = '__all__'

class FoodSerializer(ModelSerializer):
  makros = MakroSerializer()
  food_category = FoodCategorySerializer()
  class Meta:
    model = Food
    fields = '__all__'
