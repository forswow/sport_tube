import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sport_tube/data/source/database/database.dart';
import 'connection/connection.dart';

part 'database_impl.g.dart';

final dbPod = Provider<Database>((ref) => DatabaseHelperImpl());


@DriftDatabase(include: {'sql.drift'})
class DatabaseHelperImpl extends _$DatabaseHelperImpl implements Database {
  DatabaseHelperImpl() : super(connect());
  DatabaseHelperImpl.forTesting(DatabaseConnection super.connection);
  @override
  int get schemaVersion => 1;

  @override
  Future<void> updateExercises(
          {required int id, required ExercisesCompanion exercise}) async =>
      transaction(() => _updateExercises(
            exercise.name.value,
            exercise.description.value,
            exercise.type.value,
            exercise.difficultyLevel.value,
            exercise.duration.value,
            exercise.repetitions.value,
            exercise.sets.value,
            id,
          ));

  @override
  Future<Exercise> addExercise({required ExercisesCompanion exercise}) async {
    try {
      final id = await transaction(() async => await _insertExercises(
            exercise.name.value,
            exercise.description.value,
            exercise.type.value,
            exercise.difficultyLevel.value,
            exercise.duration.value,
            exercise.repetitions.value,
            exercise.sets.value,
          ));
      return _getExercisesById(id).getSingle();
    } catch (e) {
      log('err:$e');
      throw e.toString();
    }

    // return _getExercisesById(id).getSingle();
  }

  @override
  Future<Exercise?> getExerciseById({required int id}) async =>
      _getExercisesById(id).getSingleOrNull();

  @override
  Future<List<Exercise>> getExercises() async => _getExercises().get();

  @override
  Stream<List<Exercise>> watchExercise() => _getExercises().watch();
}
