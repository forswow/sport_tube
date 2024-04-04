import 'package:sport_tube/domain/enum/difficulty_level.dart';

extension DifficultyLevelExtension on DifficultyLevel {
  static List<String> getNames() {
    return DifficultyLevel.values
        .map((type) => type.toString().split('.').last)
        .toList();
  }
}
