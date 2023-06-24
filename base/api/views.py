from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.db.models import Q
from base.models import Food
from .serializers import FoodSerializer, FoodNutrientSerializer

@api_view(['GET'])
def routes(request):
  routes = [
    'GET /api'
  ]
  return Response(routes)

@api_view(['GET'])
def foods(request):
  s = request.GET.get('s') if request.GET.get('s') != None else ''
  foods = Food.objects.filter(Q(name__icontains=s))
  serializer = FoodSerializer(foods, many=True)
  return Response(serializer.data)

@api_view(['GET'])
def food(request, pk):
  food = Food.objects.get(id=pk)
  serializer = FoodSerializer(food, many=False)
  return Response(serializer.data)

@api_view(['GET'])
def foodNutrients(request, pk):
  food = Food.objects.get(id=pk)
  nutrients = food.nutrients.all()
  serializer = FoodNutrientSerializer(nutrients, many=True)
  return Response(serializer.data)
