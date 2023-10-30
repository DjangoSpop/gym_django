class Workout {
  final String id;
  final String title;
  final List<String> exerciseIds; // List of exercise IDs

  Workout({
    required this.id,
    required this.title,
    required this.exerciseIds,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'],
      title: json['title'],
      exerciseIds: List<String>.from(json['exerciseIds']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'exerciseIds': exerciseIds,
    };
  }
}
