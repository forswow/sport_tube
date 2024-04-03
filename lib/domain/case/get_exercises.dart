import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/repository/exercises_impl.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';

part 'get_exercises.g.dart';

@riverpod
class GetExercises extends _$GetExercises {
  @override
  Future<List<Exercise>> build() async {
    final repository = ref.watch(exercisesRepositoryImplProvider);
    return repository.valueOrNull ?? [];
  }
}
