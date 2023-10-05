import 'package:flutter/foundation.dart';
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
          name: 'Wide Grips Lats Pull Down & Reverse Grip Lats Pull Down ',
          description: 'Description for Pull-Ups',
          sets: '3',
          reps: '10 , 10 , 8 EACH',
        ),
        Exercise(
          name: 'Cable Pull over',
          description: 'Pull Over Free Form ',
          sets: '3',
          reps: '15 - 12 - 10',
        ),
        Exercise(
          name: 'DB ONE ARM',
          description: 'Description for Seated Cable Row',
          sets: '3',
          reps: '10 - 10 - 10',
        ),
        Exercise(
          name: 'SEATED CABLE ROW',
          description: 'Description for Seated Cable Row',
          sets: '3',
          reps: '12 - 10 - 8',
        ),
        Exercise(
          name: 'Dead Lift',
          description: 'Good Form Is A Must and Dont Carry to much',
          sets: '3',
          reps: '15 - 15 - 15',
        ),
        Exercise(
          name: 'EZ BAR CURLS',
          description: 'Description for EZ Bar Curls',
          sets: '3',
          reps: '12 - 10 - 8',
        ),
        Exercise(
          name: 'DB HAMMER CURLS',
          description: 'Description for DB Hammer Curls',
          sets: '3',
          reps: '12 - 10 - 8',
        ),
        Exercise(
          name: 'DB CONCENTRATION CURLS',
          description: 'Description for DB Concentration Curls',
          sets: '3',
          reps: '12 - 10 - 8',
        ),
        Exercise(
          name: 'Cable High Pully Curls',
          description: 'Description for DB Preacher Curls',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        // Add more exercises for Day 2
      ],
    ),
    // Add more workout days
    WorkoutDay(
      name: 'Day 3: Legs and Shoulders',
      exercises: [
        Exercise(
          name: 'Leg Press',
          description: 'Description for Leg Press',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Leg Extension',
          description: 'Description for Leg Extension',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Leg Curl',
          description: 'Description for Leg Curl',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Squats',
          description: 'Description for Squats',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Seated Calf Raise',
          description: 'Description for Seated Calf Raise',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Standing Calf Raise',
          description: 'Description for Standing Calf Raise',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Shoulder Press',
          description: 'Description for Shoulder Press',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Lateral Raise',
          description: 'Description for Lateral Raise',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Front Raise',
          description: 'Description for Front Raise',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        Exercise(
          name: 'Rear Delt Fly',
          description: 'Description for Rear Delt Fly',
          sets: '4',
          reps: '12 - 10 - 10 - 8',
        ),
        // Add more exercises for Day 3
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
              //change color of button
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
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
