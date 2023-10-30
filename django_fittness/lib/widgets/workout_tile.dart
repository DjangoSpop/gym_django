import 'package:flutter/material.dart';

class WorkoutTile extends StatelessWidget {
  final String title;
  final String description;
  final int sets;
  final int reps;

  WorkoutTile({
    required this.title,
    required this.description,
    required this.sets,
    required this.reps,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
            Text('$sets sets, $reps reps'),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Add navigation or other action here
        },
      ),
    );
  }
}
