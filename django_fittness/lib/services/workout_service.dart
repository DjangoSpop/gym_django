import 'dart:convert';
import 'package:django_fittness/models/workout.dart';
import 'package:http/http.dart' as http;

class WorkoutService {
  final String baseUrl = 'YOUR_API_BASE_URL'; // Replace with your API endpoint

  Future<List<Workout>> getWorkouts() async {
    final response = await http.get(Uri.parse('$baseUrl/workouts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Workout.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load workouts');
    }
  }

  Future<void> addWorkout(Workout workout) async {
    final response = await http.post(
      Uri.parse('$baseUrl/workouts'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(workout.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to add workout');
    }
  }
}
