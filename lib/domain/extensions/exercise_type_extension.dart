import 'package:sport_tube/domain/enum/exercise_type.dart';

extension ExerciseTypeExtension on ExerciseType {
  static List<String> getNames() {
    return ExerciseType.values
        .map((type) => type.toString().split('.').last)
        .toList();
  }
}
