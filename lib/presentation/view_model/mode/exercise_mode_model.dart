import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_tube/data/source/database/database_impl.dart';
import 'package:sport_tube/domain/enum/difficulty_level.dart';
import 'package:sport_tube/domain/extensions/mode_extension.dart';
import 'package:sport_tube/domain/model/exercise_model.dart';
import 'package:sport_tube/presentation/view_model/exercise_view_model.dart';

import '../../../domain/enum/exercise_type.dart';

part 'exercise_mode_model.g.dart';

@riverpod
class ExerciseModeModel extends _$ExerciseModeModel {
  late final exerciseModel = ref.watch(exerciseViewModelProvider.notifier);
  // bool canPop = false;
  ModeData _data = {};

  bool get isNew => _data.id == null;

  @override
  (ModeData exercise, bool canPop) build(ExerciseModel? exercise,
          {bool canPop = false}) =>
      (
        _data = {
          'id': exercise?.id,
          'name': exercise?.name,
          'description': exercise?.description,
          'type': exercise?.type,
          'difficulty_level': exercise?.difficultyLevel,
          'duration': exercise?.duration,
          'repetitions': exercise?.repetitions,
          'sets': exercise?.sets,
        },
        canPop
      );

  void setTitle(String value) => _sets('name', value);

  void setDescription(String value) => _sets('description', value);

  void setType(String type) => _sets('type', type);

  void setDifficultyLevel(String level) => _sets('difficultyLevel', level);

  void setDuration(double value) => _sets('duration', value);

  void setRepetitions(int value) => _sets('repetitions', value);

  void setSets(int value) => _sets('sets', value);

  void _sets(String key, dynamic value) {
    _data[key] = value;
    state = (_data, true);
  }

  Future<void> createOrUpdate() {
    final id = _data.id;
    final title = _data.name;
    final description = _data.description;
    final type = _data.type ?? ExerciseType.cardio.name;
    final difficultyLevel =
        _data.difficultyLevel ?? DifficultyLevel.beginner.name;
    final duration = _data.duration;
    final repetitions = _data.repetitions;
    final sets = _data.sets;

    return (!isNew
            ? exerciseModel.updateExercise(Exercise(
                id: id!,
                name: title,
                description: description,
                type: type,
                difficultyLevel: difficultyLevel,
                duration: duration,
                repetitions: repetitions,
                sets: sets))
            : exerciseModel.addExercise(title, description, type,
                difficultyLevel, duration, repetitions, sets))
        .then((value) => state = (_data, false));
  }
}
