# workout_app/models.py

from django.db import models
from django.contrib.auth.models import User

class Exercise(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    # Add more fields as needed

class Workout(models.Model):
    title = models.CharField(max_length=100)
    exercises = models.ManyToManyField(Exercise)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    # Add more fields as needed
