
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Weather
from .serializers import WeatherSerializer
from .utils import fetch_weather_data

class WeatherView(APIView):

    def get(self, request, city_name, format=None):
        data = fetch_weather_data(city_name, 'YOUR_API_KEY')
        weather = Weather(
            city_name=city_name,
            temperature=data['main']['temp'],
            humidity=data['main']['humidity'],
            description=data['weather'][0]['description']
        )
        weather.save()
        
        serializer = WeatherSerializer(weather)
        return Response(serializer.data)
