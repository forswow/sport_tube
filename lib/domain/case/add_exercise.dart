import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/repository/exercises_impl.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';

part 'add_exercise.g.dart';

@riverpod
class AddExercise extends _$AddExercise {
  @override
  Future<Exercise> build(String? title, String? description, String? type,
      String? difficultyLevel, double? duration, int? repetitions, int? sets) {
    final rep = ref.read(exercisesRepositoryImplProvider.notifier);
    return rep.addExercise(
        name: title,
        description: description,
        type: type,
        difficultyLevel: difficultyLevel,
        duration: duration,
        repetitions: repetitions,
        sets: sets);
  }
}
