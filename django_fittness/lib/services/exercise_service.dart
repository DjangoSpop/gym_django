import 'dart:convert';
import 'package:django_fittness/models/exercise.dart';
import 'package:http/http.dart' as http;

class ExerciseService {
  final String baseUrl = 'YOUR_API_BASE_URL'; // Replace with your API endpoint

  Future<List<Exercise>> getExercises() async {
    final response = await http.get(Uri.parse('$baseUrl/exercises'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Exercise.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load exercises');
    }
  }

  Future<void> addExercise(Exercise exercise) async {
    final response = await http.post(
      Uri.parse('$baseUrl/exercises'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(exercise.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to add exercise');
    }
  }
}




// dart
//       body: json.encode(exercise.toJson()),
//     );

//     if (response.statusCode == 201) {
//       print('Exercise added successfully');
//     } else {
//       throw Exception('Failed to add exercise');
//     }
//  }

//  Future<void> updateExercise(Exercise exercise) async {
//     final response = await http.put(
//       Uri.parse('$baseUrl/exercises/${exercise.id}'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(exercise.toJson()),
//     );

//     if (response.statusCode == 200) {
//       print('Exercise updated successfully');
//     } else {
//       throw Exception('Failed to update exercise');
//     }
//  }

//  Future<void> deleteExercise(int id) async {
//     final response = await http.delete(
//       Uri.parse('$baseUrl/exercises/$id'),
//     );

//     if (response.statusCode == 204) {
//       print('Exercise deleted successfully');
//     } else {
//       throw Exception('Failed to delete exercise');
//     }
//  }

