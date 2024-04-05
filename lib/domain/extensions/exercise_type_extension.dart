import 'package:sport_tube/domain/enum/exercise_type.dart';

extension ExerciseTypeExtension on ExerciseType {
  static List<String> getNames() => ExerciseType.values
        .map((type) => type.toString().split('.').last)
        .toList();

  static String first(String? type) => ExerciseType.values
        .firstWhere((el) => el.name == type, orElse: () => ExerciseType.cardio)
        .name;
}
