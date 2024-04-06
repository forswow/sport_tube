import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/source/database/database.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/repository/exercise.dart';

part 'exercises_impl.g.dart';

@riverpod
class ExercisesRepositoryImpl extends _$ExercisesRepositoryImpl
    implements ExerciseRepository {
  late final Database database = ref.read(dbPod);
  @override
  Stream<List<Exercise>> build() => database.watchExercise();

  @override
  Future<Exercise> addExercise(
          {String? name,
          String? description,
          String? type,
          String? difficultyLevel,
          double? duration,
          int? repetitions,
          int? sets}) async =>
      await database.addExercise(
          exercise: ExercisesCompanion.insert(
              name: Value(name),
              description: Value(description),
              type: Value(type),
              difficultyLevel: Value(difficultyLevel),
              duration: Value(duration),
              repetitions: Value(repetitions),
              sets: Value(sets)));

  @override
  Future<void> updateExercise(int id,
          {String? name,
          String? description,
          String? type,
          String? difficultyLevel,
          double? duration,
          int? repetitions,
          int? sets}) async =>
      await database.updateExercises(
          id: id,
          exercise: ExercisesCompanion(
              name: Value(name),
              description: Value(description),
              type: Value(type),
              difficultyLevel: Value(difficultyLevel),
              duration: Value(duration),
              repetitions: Value(repetitions),
              sets: Value(sets)));
}
