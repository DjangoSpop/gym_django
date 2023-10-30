import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  final _formKey = GlobalKey<FormState>();
  final _exerciseNameController = TextEditingController();
  final _exerciseDescriptionController = TextEditingController();
  final _exerciseDifficultyController = TextEditingController();
  final _workoutNameController = TextEditingController();
  final _workoutDescriptionController = TextEditingController();
  final _workoutDifficultyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add a new exercise:',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _exerciseNameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _exerciseDescriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _exerciseDifficultyController,
                decoration: const InputDecoration(
                  labelText: 'Difficulty',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a difficulty level';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Add a new workout:',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                controller: _workoutNameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _workoutDescriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _workoutDifficultyController,
                decoration: const InputDecoration(
                  labelText: 'Difficulty',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a difficulty level';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    submitData();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submitData() async {
    final database = await openDatabase(
      // TODO: Replace with your database path
      'exercise_workout_database.db',
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE exercises (id INTEGER PRIMARY KEY, name TEXT, description TEXT, difficulty INTEGER)',
        );
        await db.execute(
          'CREATE TABLE workouts (id INTEGER PRIMARY KEY, name TEXT, description TEXT, difficulty INTEGER)',
        );
      },
    );

    final exerciseName = _exerciseNameController.text;
    final exerciseDescription = _exerciseDescriptionController.text;
    final exerciseDifficulty = int.parse(_exerciseDifficultyController.text);
    final workoutName = _workoutNameController.text;
    final workoutDescription = _workoutDescriptionController.text;
    final workoutDifficulty = int.parse(_workoutDifficultyController.text);

    try {
      await database.transaction((txn) async {
        await txn.rawInsert(
          'INSERT INTO exercises(name, description, difficulty) VALUES("$exerciseName", "$exerciseDescription", $exerciseDifficulty)',
        );
        await txn.rawInsert(
          'INSERT INTO workouts(name, description, difficulty) VALUES("$workoutName", "$workoutDescription", $workoutDifficulty)',
        );
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data submitted successfully'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error submitting data'),
        ),
      );
    }
  }
}
