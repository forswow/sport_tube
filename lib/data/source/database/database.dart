import 'database_impl.dart';

abstract class Database {
  Future<List<Exercise>> getExercises();
  Future<Exercise?> getExerciseById({required int id});
  Future<Exercise> addExercise({required ExercisesCompanion exercise});
  Future<void> updateExercises(
      {required int id, required ExercisesCompanion exercise});
  Stream<List<Exercise>> watchExercise();
}
