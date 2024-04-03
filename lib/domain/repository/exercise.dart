import 'package:sport_tube/data/source/database/database_impl.dart';

abstract class ExerciseRepository {
  Future<Exercise> addExercise({
    String? name,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  });

  Future<void> updateExercise(
    final int id, {
    String? name,
    final String? description,
    final String? type,
    final String? difficultyLevel,
    final double? duration,
    final int? repetitions,
    final int? sets,
  });
}
