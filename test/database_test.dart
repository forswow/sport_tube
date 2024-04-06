import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/enum/difficulty_level.dart';
import 'package:sport_tube/domain/enum/exercise_type.dart';

void main() {
 
    late DatabaseHelperImpl database;

    setUp(() {
      final inMemory = DatabaseConnection(NativeDatabase.memory());
      database = DatabaseHelperImpl.forTesting(inMemory);
    });

    tearDown(() => database.close());

    test('получаем упражнение по id и обновляем описание', () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise =
            exercise.copyWith(description: const Value('Новое описание'));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем название', () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise =
            exercise.copyWith(name: const Value('Новое название'));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем тип упражнения', () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise =
            exercise.copyWith(type: Value(ExerciseType.strength.name));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем уровень сложности упражнения',
        () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise = exercise.copyWith(
            difficultyLevel: Value(DifficultyLevel.advanced.name));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем время выполнения упражнения',
        () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise = exercise.copyWith(duration: const Value(5.20));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем количество подходов', () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise = exercise.copyWith(duration: const Value(5.20));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем количество подходов', () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise = exercise.copyWith(sets: const Value(5));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
    test('получаем упражнение по id и обновляем количество повторений', () async {
      final exercise = await database.getExerciseById(id: 1);
      if (exercise != null) {
        final newExercise = exercise.copyWith(repetitions: const Value(20));
        await database.updateExercises(
            id: exercise.id, exercise: newExercise.toCompanion(true));
        final result = await database.getExerciseById(id: 1);
        expect(result, contains(newExercise));
      }
    });
  
}
