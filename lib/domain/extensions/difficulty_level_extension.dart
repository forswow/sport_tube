import 'package:sport_tube/domain/enum/difficulty_level.dart';

extension DifficultyLevelExtension on DifficultyLevel {
  static List<String> getNames() => DifficultyLevel.values
        .map((type) => type.toString().split('.').last)
        .toList();

  static String first(String? level) => DifficultyLevel.values
        .firstWhere((el) => el.name == level,
            orElse: () => DifficultyLevel.beginner)
        .name;
}
