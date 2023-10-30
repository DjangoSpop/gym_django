import 'package:django_fittness/models/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final Exercise exercise;

  ExerciseTile({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(exercise.name),
      subtitle: Text('${exercise.sets} sets, ${exercise.reps} reps'),
      leading: Image.network(exercise.imageUrl),
    );
  }
}
