from django.urls import path
from . import views
from . import urlpatterns

urlpatterns = [
    path('exercises/', views.ExerciseListCreateView.as_view(), name='exercise-list-create'),
    path('exercises/<int:pk>/', views.ExerciseDetailView.as_view(), name='exercise-detail'),
    path('workouts/', views.WorkoutListCreateView.as_view(), name='workout-list-create'),
    path('workouts/<int:pk>/', views.WorkoutDetailView.as_view(), name='workout-detail'),
]
