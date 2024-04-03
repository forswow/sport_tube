// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_exercise.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateExerciseHash() => r'00f5f7c34efd2896d7687695a487205163d30870';

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

abstract class _$UpdateExercise
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final int id;
  late final String? title;
  late final String? description;
  late final String? type;
  late final String? difficultyLevel;
  late final double? duration;
  late final int? repetitions;
  late final int? sets;

  FutureOr<void> build(
    int id, {
    String? title,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  });
}

/// See also [UpdateExercise].
@ProviderFor(UpdateExercise)
const updateExerciseProvider = UpdateExerciseFamily();

/// See also [UpdateExercise].
class UpdateExerciseFamily extends Family<AsyncValue<void>> {
  /// See also [UpdateExercise].
  const UpdateExerciseFamily();

  /// See also [UpdateExercise].
  UpdateExerciseProvider call(
    int id, {
    String? title,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  }) {
    return UpdateExerciseProvider(
      id,
      title: title,
      description: description,
      type: type,
      difficultyLevel: difficultyLevel,
      duration: duration,
      repetitions: repetitions,
      sets: sets,
    );
  }

  @override
  UpdateExerciseProvider getProviderOverride(
    covariant UpdateExerciseProvider provider,
  ) {
    return call(
      provider.id,
      title: provider.title,
      description: provider.description,
      type: provider.type,
      difficultyLevel: provider.difficultyLevel,
      duration: provider.duration,
      repetitions: provider.repetitions,
      sets: provider.sets,
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
  String? get name => r'updateExerciseProvider';
}

/// See also [UpdateExercise].
class UpdateExerciseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UpdateExercise, void> {
  /// See also [UpdateExercise].
  UpdateExerciseProvider(
    int id, {
    String? title,
    String? description,
    String? type,
    String? difficultyLevel,
    double? duration,
    int? repetitions,
    int? sets,
  }) : this._internal(
          () => UpdateExercise()
            ..id = id
            ..title = title
            ..description = description
            ..type = type
            ..difficultyLevel = difficultyLevel
            ..duration = duration
            ..repetitions = repetitions
            ..sets = sets,
          from: updateExerciseProvider,
          name: r'updateExerciseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateExerciseHash,
          dependencies: UpdateExerciseFamily._dependencies,
          allTransitiveDependencies:
              UpdateExerciseFamily._allTransitiveDependencies,
          id: id,
          title: title,
          description: description,
          type: type,
          difficultyLevel: difficultyLevel,
          duration: duration,
          repetitions: repetitions,
          sets: sets,
        );

  UpdateExerciseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.difficultyLevel,
    required this.duration,
    required this.repetitions,
    required this.sets,
  }) : super.internal();

  final int id;
  final String? title;
  final String? description;
  final String? type;
  final String? difficultyLevel;
  final double? duration;
  final int? repetitions;
  final int? sets;

  @override
  FutureOr<void> runNotifierBuild(
    covariant UpdateExercise notifier,
  ) {
    return notifier.build(
      id,
      title: title,
      description: description,
      type: type,
      difficultyLevel: difficultyLevel,
      duration: duration,
      repetitions: repetitions,
      sets: sets,
    );
  }

  @override
  Override overrideWith(UpdateExercise Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateExerciseProvider._internal(
        () => create()
          ..id = id
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
        id: id,
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
  AutoDisposeAsyncNotifierProviderElement<UpdateExercise, void>
      createElement() {
    return _UpdateExerciseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateExerciseProvider &&
        other.id == id &&
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
    hash = _SystemHash.combine(hash, id.hashCode);
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

mixin UpdateExerciseRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `id` of this provider.
  int get id;

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

class _UpdateExerciseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UpdateExercise, void>
    with UpdateExerciseRef {
  _UpdateExerciseProviderElement(super.provider);

  @override
  int get id => (origin as UpdateExerciseProvider).id;
  @override
  String? get title => (origin as UpdateExerciseProvider).title;
  @override
  String? get description => (origin as UpdateExerciseProvider).description;
  @override
  String? get type => (origin as UpdateExerciseProvider).type;
  @override
  String? get difficultyLevel =>
      (origin as UpdateExerciseProvider).difficultyLevel;
  @override
  double? get duration => (origin as UpdateExerciseProvider).duration;
  @override
  int? get repetitions => (origin as UpdateExerciseProvider).repetitions;
  @override
  int? get sets => (origin as UpdateExerciseProvider).sets;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
