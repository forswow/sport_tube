// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_exercise.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addExerciseHash() => r'96dbf8e781c3045413493cd6ff50eca4267aad5e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AddExercise
    extends BuildlessAutoDisposeAsyncNotifier<Exercise> {
  late final String? title;
  late final String? description;
  late final String? type;
  late final String? difficultyLevel;
  late final double? duration;
  late final int? repetitions;
  late final int? sets;

  FutureOr<Exercise> build(
    String? title,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  );
}

/// See also [AddExercise].
@ProviderFor(AddExercise)
const addExerciseProvider = AddExerciseFamily();

/// See also [AddExercise].
class AddExerciseFamily extends Family<AsyncValue<Exercise>> {
  /// See also [AddExercise].
  const AddExerciseFamily();

  /// See also [AddExercise].
  AddExerciseProvider call(
    String? title,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  ) {
    return AddExerciseProvider(
      title,
      description,
      type,
      difficultyLevel,
      duration,
      repetitions,
      sets,
    );
  }

  @override
  AddExerciseProvider getProviderOverride(
    covariant AddExerciseProvider provider,
  ) {
    return call(
      provider.title,
      provider.description,
      provider.type,
      provider.difficultyLevel,
      provider.duration,
      provider.repetitions,
      provider.sets,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addExerciseProvider';
}

/// See also [AddExercise].
class AddExerciseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AddExercise, Exercise> {
  /// See also [AddExercise].
  AddExerciseProvider(
    String? title,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  ) : this._internal(
          () => AddExercise()
            ..title = title
            ..description = description
            ..type = type
            ..difficultyLevel = difficultyLevel
            ..duration = duration
            ..repetitions = repetitions
            ..sets = sets,
          from: addExerciseProvider,
          name: r'addExerciseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addExerciseHash,
          dependencies: AddExerciseFamily._dependencies,
          allTransitiveDependencies:
              AddExerciseFamily._allTransitiveDependencies,
          title: title,
          description: description,
          type: type,
          difficultyLevel: difficultyLevel,
          duration: duration,
          repetitions: repetitions,
          sets: sets,
        );

  AddExerciseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
    required this.description,
    required this.type,
    required this.difficultyLevel,
    required this.duration,
    required this.repetitions,
    required this.sets,
  }) : super.internal();

  final String? title;
  final String? description;
  final String? type;
  final String? difficultyLevel;
  final double? duration;
  final int? repetitions;
  final int? sets;

  @override
  FutureOr<Exercise> runNotifierBuild(
    covariant AddExercise notifier,
  ) {
    return notifier.build(
      title,
      description,
      type,
      difficultyLevel,
      duration,
      repetitions,
      sets,
    );
  }

  @override
  Override overrideWith(AddExercise Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddExerciseProvider._internal(
        () => create()
          ..title = title
          ..description = description
          ..type = type
          ..difficultyLevel = difficultyLevel
          ..duration = duration
          ..repetitions = repetitions
          ..sets = sets,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
        description: description,
        type: type,
        difficultyLevel: difficultyLevel,
        duration: duration,
        repetitions: repetitions,
        sets: sets,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AddExercise, Exercise>
      createElement() {
    return _AddExerciseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddExerciseProvider &&
        other.title == title &&
        other.description == description &&
        other.type == type &&
        other.difficultyLevel == difficultyLevel &&
        other.duration == duration &&
        other.repetitions == repetitions &&
        other.sets == sets;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, difficultyLevel.hashCode);
    hash = _SystemHash.combine(hash, duration.hashCode);
    hash = _SystemHash.combine(hash, repetitions.hashCode);
    hash = _SystemHash.combine(hash, sets.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddExerciseRef on AutoDisposeAsyncNotifierProviderRef<Exercise> {
  /// The parameter `title` of this provider.
  String? get title;

  /// The parameter `description` of this provider.
  String? get description;

  /// The parameter `type` of this provider.
  String? get type;

  /// The parameter `difficultyLevel` of this provider.
  String? get difficultyLevel;

  /// The parameter `duration` of this provider.
  double? get duration;

  /// The parameter `repetitions` of this provider.
  int? get repetitions;

  /// The parameter `sets` of this provider.
  int? get sets;
}

class _AddExerciseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AddExercise, Exercise>
    with AddExerciseRef {
  _AddExerciseProviderElement(super.provider);

  @override
  String? get title => (origin as AddExerciseProvider).title;
  @override
  String? get description => (origin as AddExerciseProvider).description;
  @override
  String? get type => (origin as AddExerciseProvider).type;
  @override
  String? get difficultyLevel =>
      (origin as AddExerciseProvider).difficultyLevel;
  @override
  double? get duration => (origin as AddExerciseProvider).duration;
  @override
  int? get repetitions => (origin as AddExerciseProvider).repetitions;
  @override
  int? get sets => (origin as AddExerciseProvider).sets;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
