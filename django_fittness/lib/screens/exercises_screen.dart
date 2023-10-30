import 'package:django_fittness/models/exercise.dart';
import 'package:django_fittness/services/exercise_service.dart';
import 'package:flutter/material.dart';
import '../widgets/exercise_tile.dart';

class ExercisesScreen extends StatelessWidget {
  final exerciseService = ExerciseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: FutureBuilder<List<Exercise>>(
        future: exerciseService.getExercises(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final exercises = snapshot.data;
            return ListView.builder(
              itemCount: exercises?.length,
              itemBuilder: (context, index) {
                return ExerciseTile(exercise: exercises![index]);
              },
            );
          }
        },
      ),
    );
  }
}
