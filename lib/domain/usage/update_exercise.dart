import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/repository/exercises_impl.dart';

part 'update_exercise.g.dart';

@riverpod
class UpdateExercise extends _$UpdateExercise {
  @override
  Future<void> build(int id,
      {String? title,
      String? description,
      String? type,
      String? difficultyLevel,
      double? duration,
      int? repetitions,
      int? sets}) {
    final rep = ref.read(exercisesRepositoryImplProvider.notifier);
    return rep.updateExercise(id,
        name: title,
        description: description,
        type: type,
        difficultyLevel: difficultyLevel,
        duration: duration,
        repetitions: repetitions,
        sets: sets);
  }
}
