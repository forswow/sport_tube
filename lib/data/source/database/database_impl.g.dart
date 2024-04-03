// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_impl.dart';

// ignore_for_file: type=lint
class Exercises extends Table with TableInfo<Exercises, Exercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Exercises(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _difficultyLevelMeta =
      const VerificationMeta('difficultyLevel');
  late final GeneratedColumn<String> difficultyLevel = GeneratedColumn<String>(
      'difficulty_level', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  late final GeneratedColumn<double> duration = GeneratedColumn<double>(
      'duration', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _repetitionsMeta =
      const VerificationMeta('repetitions');
  late final GeneratedColumn<int> repetitions = GeneratedColumn<int>(
      'repetitions', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _setsMeta = const VerificationMeta('sets');
  late final GeneratedColumn<int> sets = GeneratedColumn<int>(
      'sets', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        type,
        difficultyLevel,
        duration,
        repetitions,
        sets
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'Exercises';
  @override
  VerificationContext validateIntegrity(Insertable<Exercise> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('difficulty_level')) {
      context.handle(
          _difficultyLevelMeta,
          difficultyLevel.isAcceptableOrUnknown(
              data['difficulty_level']!, _difficultyLevelMeta));
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    }
    if (data.containsKey('repetitions')) {
      context.handle(
          _repetitionsMeta,
          repetitions.isAcceptableOrUnknown(
              data['repetitions']!, _repetitionsMeta));
    }
    if (data.containsKey('sets')) {
      context.handle(
          _setsMeta, sets.isAcceptableOrUnknown(data['sets']!, _setsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Exercise(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      difficultyLevel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}difficulty_level']),
      duration: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}duration']),
      repetitions: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}repetitions']),
      sets: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sets']),
    );
  }

  @override
  Exercises createAlias(String alias) {
    return Exercises(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Exercise extends DataClass implements Insertable<Exercise> {
  final int id;
  final String? name;
  final String? description;
  final String? type;
  final String? difficultyLevel;
  final double? duration;
  final int? repetitions;
  final int? sets;
  const Exercise(
      {required this.id,
      this.name,
      this.description,
      this.type,
      this.difficultyLevel,
      this.duration,
      this.repetitions,
      this.sets});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || difficultyLevel != null) {
      map['difficulty_level'] = Variable<String>(difficultyLevel);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<double>(duration);
    }
    if (!nullToAbsent || repetitions != null) {
      map['repetitions'] = Variable<int>(repetitions);
    }
    if (!nullToAbsent || sets != null) {
      map['sets'] = Variable<int>(sets);
    }
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      difficultyLevel: difficultyLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(difficultyLevel),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
      repetitions: repetitions == null && nullToAbsent
          ? const Value.absent()
          : Value(repetitions),
      sets: sets == null && nullToAbsent ? const Value.absent() : Value(sets),
    );
  }

  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      type: serializer.fromJson<String?>(json['type']),
      difficultyLevel: serializer.fromJson<String?>(json['difficulty_level']),
      duration: serializer.fromJson<double?>(json['duration']),
      repetitions: serializer.fromJson<int?>(json['repetitions']),
      sets: serializer.fromJson<int?>(json['sets']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'description': serializer.toJson<String?>(description),
      'type': serializer.toJson<String?>(type),
      'difficulty_level': serializer.toJson<String?>(difficultyLevel),
      'duration': serializer.toJson<double?>(duration),
      'repetitions': serializer.toJson<int?>(repetitions),
      'sets': serializer.toJson<int?>(sets),
    };
  }

  Exercise copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> difficultyLevel = const Value.absent(),
          Value<double?> duration = const Value.absent(),
          Value<int?> repetitions = const Value.absent(),
          Value<int?> sets = const Value.absent()}) =>
      Exercise(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        description: description.present ? description.value : this.description,
        type: type.present ? type.value : this.type,
        difficultyLevel: difficultyLevel.present
            ? difficultyLevel.value
            : this.difficultyLevel,
        duration: duration.present ? duration.value : this.duration,
        repetitions: repetitions.present ? repetitions.value : this.repetitions,
        sets: sets.present ? sets.value : this.sets,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('difficultyLevel: $difficultyLevel, ')
          ..write('duration: $duration, ')
          ..write('repetitions: $repetitions, ')
          ..write('sets: $sets')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, type, difficultyLevel,
      duration, repetitions, sets);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.type == this.type &&
          other.difficultyLevel == this.difficultyLevel &&
          other.duration == this.duration &&
          other.repetitions == this.repetitions &&
          other.sets == this.sets);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> description;
  final Value<String?> type;
  final Value<String?> difficultyLevel;
  final Value<double?> duration;
  final Value<int?> repetitions;
  final Value<int?> sets;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.difficultyLevel = const Value.absent(),
    this.duration = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.sets = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.difficultyLevel = const Value.absent(),
    this.duration = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.sets = const Value.absent(),
  });
  static Insertable<Exercise> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? type,
    Expression<String>? difficultyLevel,
    Expression<double>? duration,
    Expression<int>? repetitions,
    Expression<int>? sets,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (difficultyLevel != null) 'difficulty_level': difficultyLevel,
      if (duration != null) 'duration': duration,
      if (repetitions != null) 'repetitions': repetitions,
      if (sets != null) 'sets': sets,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? description,
      Value<String?>? type,
      Value<String?>? difficultyLevel,
      Value<double?>? duration,
      Value<int?>? repetitions,
      Value<int?>? sets}) {
    return ExercisesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      difficultyLevel: difficultyLevel ?? this.difficultyLevel,
      duration: duration ?? this.duration,
      repetitions: repetitions ?? this.repetitions,
      sets: sets ?? this.sets,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (difficultyLevel.present) {
      map['difficulty_level'] = Variable<String>(difficultyLevel.value);
    }
    if (duration.present) {
      map['duration'] = Variable<double>(duration.value);
    }
    if (repetitions.present) {
      map['repetitions'] = Variable<int>(repetitions.value);
    }
    if (sets.present) {
      map['sets'] = Variable<int>(sets.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('difficultyLevel: $difficultyLevel, ')
          ..write('duration: $duration, ')
          ..write('repetitions: $repetitions, ')
          ..write('sets: $sets')
          ..write(')'))
        .toString();
  }
}

abstract class _$DatabaseHelperImpl extends GeneratedDatabase {
  _$DatabaseHelperImpl(QueryExecutor e) : super(e);
  late final Exercises exercises = Exercises(this);
  Selectable<Exercise> _getExercises() {
    return customSelect('SELECT * FROM Exercises', variables: [], readsFrom: {
      exercises,
    }).asyncMap(exercises.mapFromRow);
  }

  Selectable<Exercise> _getExercisesById(int id) {
    return customSelect('SELECT * FROM Exercises WHERE id = ?1 LIMIT 1',
        variables: [
          Variable<int>(id)
        ],
        readsFrom: {
          exercises,
        }).asyncMap(exercises.mapFromRow);
  }

  Future<int> _insertExercises(String? name, String? description, String? type,
      String? difficultyLevel, double? duration, int? repetitions, int? sets) {
    return customInsert(
      'INSERT INTO Exercises (name, description, type, difficulty_level, duration, repetitions, sets) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)',
      variables: [
        Variable<String>(name),
        Variable<String>(description),
        Variable<String>(type),
        Variable<String>(difficultyLevel),
        Variable<double>(duration),
        Variable<int>(repetitions),
        Variable<int>(sets)
      ],
      updates: {exercises},
    );
  }

  Future<int> _updateExercises(
      String? name,
      String? description,
      String? type,
      String? difficultyLevel,
      double? duration,
      int? repetitions,
      int? sets,
      int id) {
    return customUpdate(
      'UPDATE Exercises SET name = ?1, description = ?2, type = ?3, difficulty_level = ?4, duration = ?5, repetitions = ?6, sets = ?7 WHERE id = ?8',
      variables: [
        Variable<String>(name),
        Variable<String>(description),
        Variable<String>(type),
        Variable<String>(difficultyLevel),
        Variable<double>(duration),
        Variable<int>(repetitions),
        Variable<int>(sets),
        Variable<int>(id)
      ],
      updates: {exercises},
      updateKind: UpdateKind.update,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [exercises];
}
