
from django.db import models

class Weather(models.Model):
    city_name = models.CharField(max_length=200)
    temperature = models.FloatField()
    humidity = models.FloatField()
    description = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)
