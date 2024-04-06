import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/enum/difficulty_level.dart';
import 'package:sport_tube/domain/enum/exercise_type.dart';
import 'package:sport_tube/domain/usage/add_exercise.dart';
import 'package:sport_tube/domain/usage/update_exercise.dart';
import 'package:sport_tube/presentation/view_model/exercise_view_model.dart';

void main() {
  late DatabaseHelperImpl database;
  late ProviderContainer container;
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  tearDown(() => database.close());
  test('ExerciseViewModel create', () async {
    final dbTest = DatabaseConnection(NativeDatabase.memory());
    database = DatabaseHelperImpl.forTesting(dbTest);
    container =
        ProviderContainer(overrides: [dbPod.overrideWithValue(database)]);
    final res = container.listen(exerciseViewModelProvider, (_, __) {});
    final matcher = await container.read(addExerciseProvider(
            'название',
            'описание',
            ExerciseType.stretching.name,
            DifficultyLevel.intermediate.name,
            15.0,
            15,
            3)
        .future);
    await Future.delayed(Durations.extralong4);
    final actual = res.read().valueOrNull?.first;
    await expectLater(actual, matcher);
  });
  test('ExerciseViewModel update', () async {
    final dbTest = DatabaseConnection(NativeDatabase.memory());
    database = DatabaseHelperImpl.forTesting(dbTest);
    container =
        ProviderContainer(overrides: [dbPod.overrideWithValue(database)]);
    final res = container.listen(exerciseViewModelProvider, (_, __) {});

    final matcher = Exercise(
      id: 1,
      name: 'Новое название',
      description: 'Новое описание',
      type: ExerciseType.stretching.name,
      difficultyLevel: DifficultyLevel.intermediate.name,
      duration: 25.0,
      repetitions: 25,
      sets: 8,
    );
    await container.read(addExerciseProvider(
            'название',
            'описание',
            ExerciseType.stretching.name,
            DifficultyLevel.intermediate.name,
            15.0,
            15,
            3)
        .future);
    await container.read(updateExerciseProvider(1,
            title: 'Новое название',
            description: 'Новое описание',
            type: ExerciseType.stretching.name,
            difficultyLevel: DifficultyLevel.intermediate.name,
            duration: 25.0,
            repetitions: 25,
            sets: 8)
        .future);

    await Future.delayed(Durations.extralong4);
    final actual = res.read().valueOrNull;
    await expectLater(actual?.first, matcher);
  });
}
