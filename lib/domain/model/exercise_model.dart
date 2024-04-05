import 'dart:convert';

import 'package:sport_tube/data/source/database/database_impl.dart';

class ExerciseModel {
  final int id;
  final String? name;
  final String? description;
  final String? type;
  final String? difficultyLevel;
  final double? duration;
  final int? repetitions;
  final int? sets;
  ExerciseModel({
    required this.id,
    this.name,
    this.description,
    this.type,
    this.difficultyLevel,
    this.duration,
    this.repetitions,
    this.sets,
  });

  ExerciseModel copyWith({
    int? id,
    String? name,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  }) {
    return ExerciseModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      difficultyLevel: difficultyLevel ?? this.difficultyLevel,
      duration: duration ?? this.duration,
      repetitions: repetitions ?? this.repetitions,
      sets: sets ?? this.sets,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'type': type,
      'difficultyLevel': difficultyLevel,
      'duration': duration,
      'repetitions': repetitions,
      'sets': sets,
    };
  }

  factory ExerciseModel.fromMap(Map<String, dynamic> map) {
    return ExerciseModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'],
      description: map['description'],
      type: map['type'],
      difficultyLevel: map['difficultyLevel'],
      duration: map['duration']?.toDouble(),
      repetitions: map['repetitions']?.toInt(),
      sets: map['sets']?.toInt(),
    );
  }
  factory ExerciseModel.fromExercise(Exercise? exercise) {
    return ExerciseModel(
      id: exercise?.id??0,
      name: exercise?.name,
      description: exercise?.description,
      type: exercise?.type,
      difficultyLevel: exercise?.difficultyLevel,
      duration: exercise?.duration,
      repetitions: exercise?.repetitions,
      sets: exercise?.sets,
    );
  }
  String toJson() => json.encode(toMap());

  factory ExerciseModel.fromJson(String source) =>
      ExerciseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ExerciseModel(id: $id, name: $name, description: $description, type: $type, difficultyLevel: $difficultyLevel, duration: $duration, repetitions: $repetitions, sets: $sets)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExerciseModel &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.type == type &&
        other.difficultyLevel == difficultyLevel &&
        other.duration == duration &&
        other.repetitions == repetitions &&
        other.sets == sets;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        type.hashCode ^
        difficultyLevel.hashCode ^
        duration.hashCode ^
        repetitions.hashCode ^
        sets.hashCode;
  }
}
