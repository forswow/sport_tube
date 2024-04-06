// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_mode_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exerciseModeModelHash() => r'376f13dfed387e859e0849cd86a71dfaa1c008d1';

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

abstract class _$ExerciseModeModel
    extends BuildlessAutoDisposeNotifier<(ModeData exercise, bool canPop)> {
  late final ExerciseModel? exercise;
  late final bool canPop;

  (ModeData exercise, bool canPop) build(
    ExerciseModel? exercise, {
    bool canPop = false,
  });
}

/// See also [ExerciseModeModel].
@ProviderFor(ExerciseModeModel)
const exerciseModeModelProvider = ExerciseModeModelFamily();

/// See also [ExerciseModeModel].
class ExerciseModeModelFamily extends Family<(ModeData exercise, bool canPop)> {
  /// See also [ExerciseModeModel].
  const ExerciseModeModelFamily();

  /// See also [ExerciseModeModel].
  ExerciseModeModelProvider call(
    ExerciseModel? exercise, {
    bool canPop = false,
  }) {
    return ExerciseModeModelProvider(
      exercise,
      canPop: canPop,
    );
  }

  @override
  ExerciseModeModelProvider getProviderOverride(
    covariant ExerciseModeModelProvider provider,
  ) {
    return call(
      provider.exercise,
      canPop: provider.canPop,
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
  String? get name => r'exerciseModeModelProvider';
}

/// See also [ExerciseModeModel].
class ExerciseModeModelProvider extends AutoDisposeNotifierProviderImpl<
    ExerciseModeModel, (ModeData exercise, bool canPop)> {
  /// See also [ExerciseModeModel].
  ExerciseModeModelProvider(
    ExerciseModel? exercise, {
    bool canPop = false,
  }) : this._internal(
          () => ExerciseModeModel()
            ..exercise = exercise
            ..canPop = canPop,
          from: exerciseModeModelProvider,
          name: r'exerciseModeModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$exerciseModeModelHash,
          dependencies: ExerciseModeModelFamily._dependencies,
          allTransitiveDependencies:
              ExerciseModeModelFamily._allTransitiveDependencies,
          exercise: exercise,
          canPop: canPop,
        );

  ExerciseModeModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.exercise,
    required this.canPop,
  }) : super.internal();

  final ExerciseModel? exercise;
  final bool canPop;

  @override
  (ModeData exercise, bool canPop) runNotifierBuild(
    covariant ExerciseModeModel notifier,
  ) {
    return notifier.build(
      exercise,
      canPop: canPop,
    );
  }

  @override
  Override overrideWith(ExerciseModeModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ExerciseModeModelProvider._internal(
        () => create()
          ..exercise = exercise
          ..canPop = canPop,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        exercise: exercise,
        canPop: canPop,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ExerciseModeModel,
      (ModeData exercise, bool canPop)> createElement() {
    return _ExerciseModeModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExerciseModeModelProvider &&
        other.exercise == exercise &&
        other.canPop == canPop;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, exercise.hashCode);
    hash = _SystemHash.combine(hash, canPop.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ExerciseModeModelRef
    on AutoDisposeNotifierProviderRef<(ModeData exercise, bool canPop)> {
  /// The parameter `exercise` of this provider.
  ExerciseModel? get exercise;

  /// The parameter `canPop` of this provider.
  bool get canPop;
}

class _ExerciseModeModelProviderElement
    extends AutoDisposeNotifierProviderElement<ExerciseModeModel,
        (ModeData exercise, bool canPop)> with ExerciseModeModelRef {
  _ExerciseModeModelProviderElement(super.provider);

  @override
  ExerciseModel? get exercise => (origin as ExerciseModeModelProvider).exercise;
  @override
  bool get canPop => (origin as ExerciseModeModelProvider).canPop;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
