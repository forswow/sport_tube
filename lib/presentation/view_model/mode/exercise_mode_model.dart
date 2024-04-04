import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/enum/difficulty_level.dart';
import 'package:sport_tube/domain/enum/exercise_type.dart';
import 'package:sport_tube/domain/extensions/mode_extension.dart';
import 'package:sport_tube/presentation/view_model/exercise_view_model.dart';

part 'exercise_mode_model.g.dart';

@riverpod
class ExerciseModeModel extends _$ExerciseModeModel {
  late final exerciseModel = ref.watch(exerciseViewModelProvider.notifier);
  bool _edited = false;
  ModeData _data = {};

  bool get isNew => _data.id == null;
  bool get isEdited => _edited;
  @override
  ModeData build(ModeData exercise) => _data = exercise;

  void setTitle(String value) {
    _data['name'] = value;
    _edited = true;
    state = _data;
  }

  void setDescription(String value) {
    _data['description'] = value;
    _edited = true;
    state = _data;
  }

  void setType(ExerciseType type) {
    _data['type'] = type.name;
    _edited = true;
    state = _data;
  }

  void setDifficultyLevel(DifficultyLevel level) {
    _data['difficultyLevel'] = level.name;
    _edited = true;
    state = _data;
  }

  void setDuration(double value) {
    _data['duration'] = value;
    _edited = true;
    state = _data;
  }

  void setRepetitions(int value) {
    _data['repetitions'] = value;
    _edited = true;
    state = _data;
  }

  void setSets(int value) {
    _data['sets'] = value;
    _edited = true;
    state = _data;
  }

  Future<void> createOrUpdate() {
    final id = _data.id;
    final title = _data.name;
    final description = _data.description;
    final type = _data.type;
    final difficultyLevel = _data.difficultyLevel;
    final duration = _data.duration;
    final repetitions = _data.repetitions;
    final sets = _data.sets;

    if (title == null) {
      throw Exception('Title is null');
    }

    return !isNew
        ? exerciseModel.updateExercise(Exercise(
            id: id!,
            name: title,
            description: description,
            type: type,
            difficultyLevel: difficultyLevel,
            duration: duration,
            repetitions: repetitions,
            sets: sets))
        : exerciseModel.addExercise(title, description, type, difficultyLevel,
            duration, repetitions, sets);
  }
}
