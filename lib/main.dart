import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Exercise {
  final String name;
  final String description;
  final String sets;
  final String reps;
  bool isCompleted;
  final String assetPath;
  // final List<String> comments;

  //add asset pic constructor
  //final String image;

  Exercise({
    required this.name,
    required this.description,
    required this.sets,
    required this.reps,
    required this.assetPath,
    this.isCompleted = false,
    // this.comments = const [],
  });
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
          assetPath: 'assets/exercise 1.png',
        ),
        Exercise(
            name: 'incline DB Press',
            description: 'Incline DB PRESS Keep Form Concentrate on rep',
            sets: '4',
            reps: '12-16 , 10 , 10 , 8',
            assetPath: 'assets/exercise 2.png'
            //          dropset: true, // TODO add a checkbox to the form so that users can choose if they want to do it or not
            ),
        Exercise(
            name: 'Cable high Cross Super Set',
            description: 'With Cable Cross over',
            sets: '3 Each',
            reps: '12 , 10 ,8',
            assetPath: 'assets/exercise 3.png'),
        Exercise(
            name: 'Decline Chest machine',
            description: 'Chest machine Decline keep form',
            sets: '4',
            reps: '12-16 ,10,10,8 DROP SET',
            assetPath: 'assets/exercise 4.png'),
        Exercise(
            name: 'Chest Fly Machine',
            description: 'Chest Fly Machine',
            sets: '3',
            reps: '15 Each',
            assetPath: 'assets/exercise 5.png'),
        Exercise(
            name: 'Triceps Cable Push Down Super Set & Reverse grip push Down',
            description: 'triceps push down',
            sets: '3',
            reps: '10 , 10 , 8',
            assetPath: 'assets/exercise 6.png'),
        Exercise(
            name: 'EZ Skull CRUSHER',
            description: 'Zigzag Bar on siting to concentrate on form ',
            sets: '4',
            reps: '12 , 10 , 10, 8 DROP SET',
            assetPath: 'assets/exercise 7.png'),
        Exercise(
            name: ' Crunches Abs',
            description: 'Crunches',
            sets: '4',
            reps: '25',
            assetPath: 'assets/exercise 8.png'),
        Exercise(
            name: 'Lying HIP RAISE',
            description:
                ' Good Form on siting and concentrateing on the form not the quantity ',
            sets: '4',
            reps: '25',
            assetPath: 'assets/exercise 9.png')
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
            assetPath: 'assets/exercise2_1.png'),

        Exercise(
            name: 'Cable Pull over',
            description: 'Pull Over Free Form ',
            sets: '3',
            reps: '15 - 12 - 10',
            assetPath: 'assets/exercise2_2.png'),

        Exercise(
            name: 'DB ONE ARM',
            description: 'Description for Seated Cable Row',
            sets: '3',
            reps: '10 - 10 - 10',
            assetPath: 'assets/exercise2_3.png'),

        Exercise(
            name: 'SEATED CABLE ROW',
            description: 'Description for Seated Cable Row',
            sets: '3',
            reps: '12 - 10 - 8',
            assetPath: 'assets/exercise2_4.png'),
        Exercise(
            name: 'Dead Lift',
            description: 'Good Form Is A Must and Dont Carry to much',
            sets: '3',
            reps: '15 - 15 - 15',
            assetPath: 'assets/exercise2_5.png'),

        Exercise(
            name: 'EZ BAR CURLS',
            description: 'Description for EZ Bar Curls',
            sets: '3',
            reps: '12 - 10 - 8',
            assetPath: 'assets/exercise2_6.png'),

        Exercise(
            name: 'DB HAMMER CURLS',
            description: 'Description for DB Hammer Curls',
            sets: '3',
            reps: '12 - 10 - 8',
            assetPath: 'assets/exercise2_7.png'),

        Exercise(
            name: 'DB CONCENTRATION CURLS',
            description: 'Description for DB Concentration Curls',
            sets: '3',
            reps: '12 - 10 - 8',
            assetPath: 'assets/exercise2_8.png'),

        Exercise(
            name: 'Cable High Pully Curls',
            description: 'Description for DB Preacher Curls',
            sets: '4',
            reps: '12 - 10 - 10 - 8',
            assetPath: 'assets/exercise2_6.png'),

        // Add more exercises for Day 2
      ],
    ),
    // Add more workout days
    WorkoutDay(
      name: 'Day 3:Shoulders & ABS',
      exercises: [
        Exercise(
          name: 'Barbell OHP',
          description: 'Description for Leg Press',
          sets: '4',
          reps: '12 - 10 - 8 - 8 DROPSET',
          assetPath: 'assets/dbohp.jpg',
        ),
        Exercise(
          name: 'DB OHP',
          description: 'seated Dambel SHOLDER OHP',
          sets: '3',
          reps: '10- 10 - 10 ',
          assetPath: 'assets/barbelohp.jpg',
        ),
        Exercise(
          name: 'DB LATERAL RAISE',
          description: 'SHOLDER SIDE LATERAL',
          sets: '4',
          reps: '14 - 12 - 12 - 10',
          assetPath: 'assets/dblateral.jpeg',
        ),
        Exercise(
          name: 'PLATE FRONT RAISE',
          description: 'PLATE UP DOWN SHOLDER ',
          sets: '4',
          reps: '14 - 12 - 12 - 10',
          assetPath: 'assets/plate.jpg',
        ),
        Exercise(
          name: 'REVERSE MACHINE SUPER SET WITH FACE PULLS',
          description: 'REVERSE MACHINE SUPER SET',
          sets: '4',
          reps: '10 - 10 - 10 - 8 - 8',
          assetPath: 'assets/reverse.jpg',
        ),
        Exercise(
          name: 'BARBEL UP ROW SUPERSET WITH DB SHRUGS',
          description: 'BARBEL UP ROW DB SHRUG ',
          sets: '4',
          reps: '10 - 10 - 10 - 8 - 8',
          assetPath: 'assets/shrug.jpg',
        ),
        Exercise(
          name: 'RUSSIAN TWIST',
          description: 'Description for Shoulder Press',
          sets: '2',
          reps: '20 EACH SIDE ',
          assetPath: 'assets/russian.jpeg',
        ),
        Exercise(
          name: 'CABLE CRUNCHES',
          description: 'Description for Lateral Raise',
          sets: '3',
          reps: '20 - 20 - 20 ',
          assetPath: 'assets/cable.jpeg',
        ),
        Exercise(
          name: 'PLANK',
          description: 'Description for Front Raise',
          sets: '3',
          reps: '20-30 SEC',
          assetPath: 'assets/plank.jpeg',
        ),
        // Add more exercises for Day 3
      ],
    ),
    // Add more workout days here (Day 3, Day 4, etc.)
    //add day 4 ,day 5 day 6
    WorkoutDay(
      name: 'Day 4: LEGS',
      exercises: [
        Exercise(
          name: 'SQUATS',
          description: 'SQUATS',
          sets: '4',
          reps: '15, 12 , 10 ,8 > DropSet',
          assetPath: 'assets/squats.jpeg',
        ),
        Exercise(
          name: 'LEG PRESS WIDE AND NARROW FOOT POSTION',
          description: 'LEG PRESS WIDE AND NARROW FOOT ',
          sets: '4',
          reps: '10   , 10 , 10 , 8',
          assetPath: 'assets/legpress.jpeg',
          //          dropset: true, // TODO add a checkbox to the form so that users can choose if they want to do it or not
        ),
        Exercise(
          name: 'DB WALKING LUNGES',
          description: 'DUBEL LUNGES',
          sets: '3 Each',
          reps: '15 , 12 , 10',
          assetPath: 'assets/DB WALKING LUNGES.jpeg',
        ),
        Exercise(
          name: 'LYING DB CURLS OR MACHINE',
          description: 'Chest machine Decline keep form',
          sets: '4',
          reps: '15 ,12,10,8 ',
          assetPath: 'assets/lyingdb.jpg',
        ),
        Exercise(
          name: 'LEG EXTENSION WITH LEG CURLS ',
          description: 'Chest Fly Machine',
          sets: '3',
          reps: '15 Each',
          assetPath: 'assets/legext.jpeg',
        ),
        Exercise(
            name: 'SUMO SQUATS',
            description: 'triceps push down',
            sets: '3',
            reps: '15 , 12 , 10',
            assetPath: 'assets/sumo.jpeg'),
        Exercise(
            name: 'STAND CALF RAISES MACHINE , DB OR SMITH',
            description: 'CALF DB OR RAISES  ',
            sets: '3',
            reps: '15 , 12 , 10, ',
            assetPath: 'assets/calf.jpeg'),
        Exercise(
            name: ' Crunches Abs',
            description: 'Crunches',
            sets: '4',
            reps: '25',
            assetPath: 'assets/crunches.jpeg'),
      ],
    ),
    //add day 5
    WorkoutDay(
      name: 'Day 5: ARMS & ABS',
      exercises: [
        Exercise(
          name: 'DB BICEPS CURLS & OVER HEAD DB EXTENSION ',
          description: 'DB BICEPS CURLS & OVER HEAD EXTENSION ',
          sets: '4',
          reps: '12-16 + 12-16 EACH',
          assetPath: 'assets/dbcurl.jpeg',
        ),
        Exercise(
          name: 'EZ PRECHER CURLS & ROPE PUSH DOWN',
          description: 'ZIGZAG MACHINE BICEPS ROPE PUSH TRICEPS ',
          sets: '4',
          reps: '12 - 16 + 12-16',
          assetPath: 'assets/ezcurl.png',
        ),
        Exercise(
            name: 'HUMMERS CURLS & TRICEPS KICK BACK',
            description: 'TRICEPS KICK BACK',
            sets: '4',
            reps: '12-16 - 12-16',
            assetPath: 'assets/hamer.png'),
        Exercise(
            name: 'ABS GIANT SET DO ALL EXERCISE IN A CERCIUT OF 3 ROUNDS',
            description: 'PUL LEGS UP TO ABS & CRUNCES & TWISTS ',
            sets: '3',
            reps: '25 - 25 - 10 EACH SIDE',
            assetPath: 'assets/absgiant.png'),

        // Add more exercises for Day 2
      ],
    ),
    //add day 6
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      theme: ThemeData.dark().copyWith(
        // Set the background color to dark blue (#04003B)
        scaffoldBackgroundColor: const Color(0xFF04003B),
        // Define a text theme with white text color
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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

class ExerciseListScreen extends StatefulWidget {
  final List<Exercise> exercises;

  ExerciseListScreen({required this.exercises});

  @override
  State<ExerciseListScreen> createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: ListView.builder(
        itemCount: widget.exercises.length,
        itemBuilder: (BuildContext context, int index) {
          final exercise = widget.exercises[index];
          return Dismissible(
            key: Key(exercise.name),
            onDismissed: (direction) {
              setState(() {
                widget.exercises.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.delete_forever,
                color: Colors.white,
                size: 30,
              ),
            ),
            child: ListTile(
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
            ),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sets: ${exercise.sets}',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              exercise.description,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text(exercise.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),

            const SizedBox(height: 200),
            //add an image asset called exercise 1
            Center(
              child: Image.asset(
                exercise.assetPath,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            //add an image asset called exercise 2
            //Image.asset('assets/images/exercise2.jpg'),

            //// You can add an image here if needed, or leave it blank as per your requirement
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
