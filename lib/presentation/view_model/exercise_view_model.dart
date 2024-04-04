import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/usage/add_exercise.dart';
import 'package:sport_tube/domain/usage/get_exercises.dart';
import 'package:sport_tube/domain/usage/update_exercise.dart';

part 'exercise_view_model.g.dart';

@riverpod
class ExerciseViewModel extends _$ExerciseViewModel {
  @override
  Future<List<Exercise>> build() async {
    final exercises = ref.watch(getExercisesProvider).valueOrNull;
    if (exercises == null) return [];
    return exercises;
  }

  Future<void> addExercise(
          String? title,
          String? description,
          String? type,
          String? difficultyLevel,
          double? duration,
          int? repetitions,
          int? sets) async =>
      ref.watch(addExerciseProvider(title, description, type, difficultyLevel,
              duration, repetitions, sets)
          .future);

  Future<void> updateExercise(Exercise exercise) async =>
      ref.watch(updateExerciseProvider(
        exercise.id,
        title: exercise.name,
        description: exercise.description,
        type: exercise.type,
        difficultyLevel: exercise.difficultyLevel,
        duration: exercise.duration,
        repetitions: exercise.repetitions,
        sets: exercise.sets,
      ).future);
}
