import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Exercise {
  final String name;
  final String description;
  final String sets;
  final String reps;

  Exercise(
      {required this.name,
      required this.description,
      required this.sets,
      required this.reps});
}

class WorkoutDay {
  final String name;
  final List<Exercise> exercises;

  WorkoutDay({required this.name, required this.exercises});
}

class MyApp extends StatelessWidget {
  final List<WorkoutDay> workoutDays = [
    WorkoutDay(
      name: 'Day 1: Chest and Triceps ABS',
      exercises: [
        Exercise(
          name: 'Bench Press',
          description: 'Description for Bench Press',
          sets: '4',
          reps: '12-16, 10 , 10 ,8 > DropSet',
        ),
        Exercise(
          name: 'incline DB Press',
          description: 'Incline DB PRESS Keep Form Concentrate on rep',
          sets: '4',
          reps: '12-16 , 10 , 10 , 8',
          //          dropset: true, // TODO add a checkbox to the form so that users can choose if they want to do it or not
        ),
        Exercise(
          name: 'Cable high Cross Super Set',
          description: 'With Cable Cross over',
          sets: '3 Each',
          reps: '12 , 10 ,8',
        ),
        Exercise(
          name: 'Decline Chest machine',
          description: 'Chest machine Decline keep form',
          sets: '4',
          reps: '12-16 ,10,10,8 DROP SET',
        ),
        Exercise(
          name: 'Chest Fly Machine',
          description: 'Chest Fly Machine',
          sets: '3',
          reps: '15 Each',
        ),
        Exercise(
            name: 'Triceps Cable Push Down Super Set & Reverse grip push Down',
            description: 'triceps push down',
            sets: '3',
            reps: '10 , 10 , 8'),
        Exercise(
            name: 'EZ Skull CRUSHER',
            description: 'Zigzag Bar on siting to concentrate on form ',
            sets: '4',
            reps: '12 , 10 , 10, 8 DROP SET'),
        Exercise(
            name: ' Crunches Abs',
            description: 'Crunches',
            sets: '4',
            reps: '25'),
        Exercise(
            name: 'Lying HIP RAISE',
            description:
                ' Good Form on siting and concentrateing on the form not the quantity ',
            sets: '4',
            reps: '25')
      ],
    ),
    WorkoutDay(
      name: 'Day 2: Back and Biceps',
      exercises: [
        Exercise(
          name: 'Pull-Ups',
          description: 'Description for Pull-Ups',
          sets: '3',
          reps: '8',
        ),
        Exercise(
          name: 'Barbell Curls',
          description: 'Description for Barbell Curls',
          sets: '4',
          reps: '10',
        ),
        // Add more exercises for Day 2
      ],
    ),
    // Add more workout days here (Day 3, Day 4, etc.)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      theme: ThemeData.dark().copyWith(
        // Set the background color to dark blue (#04003B)
        scaffoldBackgroundColor: Color(0xFF04003B),
        // Define a text theme with white text color
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: WorkoutDayListScreen(workoutDays: workoutDays),
    );
  }
}

class WorkoutDayListScreen extends StatelessWidget {
  final List<WorkoutDay> workoutDays;

  WorkoutDayListScreen({required this.workoutDays});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Django Gym App'),
      ),
      body: ListView.builder(
        itemCount: workoutDays.length,
        itemBuilder: (BuildContext context, int index) {
          final workoutDay = workoutDays[index];
          return ListTile(
            title: Text(workoutDay.name),
            onTap: () {
              // Navigate to the exercise list for the selected day
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ExerciseListScreen(exercises: workoutDay.exercises),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ExerciseListScreen extends StatelessWidget {
  final List<Exercise> exercises;

  ExerciseListScreen({required this.exercises});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          final exercise = exercises[index];
          return ListTile(
            title: Text(exercise.name),
            subtitle: Text('Sets: ${exercise.sets}, Reps: ${exercise.reps}'),
            onTap: () {
              // Navigate to the exercise details screen
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ExerciseDetailsScreen(exercise: exercise),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ExerciseDetailsScreen extends StatelessWidget {
  final Exercise exercise;

  ExerciseDetailsScreen({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exercise.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exercise.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            // You can add an image here if needed, or leave it blank as per your requirement
            ElevatedButton(
              onPressed: () {
                // Navigate back to the exercise list
                Navigator.of(context).pop();
              },
              child: Text('Back to Exercises'),
            ),
          ],
        ),
      ),
    );
  }
}
