typedef ModeData = Map<String, dynamic>;

extension ExerciseModeExtension on ModeData {
  int? get id => this['id'];
  String? get name => this['name'];
  String? get description => this['description'];
  String? get type => this['type'];
  String? get difficultyLevel => this['difficulty_level'];
  double? get duration => this['duration'];
  int? get repetitions => this['repetitions'];
  int? get sets => this['sets'];
}
