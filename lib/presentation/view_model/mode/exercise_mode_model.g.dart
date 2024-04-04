// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_mode_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exerciseModeModelHash() => r'1947926ddc7533cb5efa3bf0ac2b76a58d8fdbe2';

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
    extends BuildlessAutoDisposeNotifier<ModeData> {
  late final Map<String, dynamic> exercise;

  ModeData build(
    Map<String, dynamic> exercise,
  );
}

/// See also [ExerciseModeModel].
@ProviderFor(ExerciseModeModel)
const exerciseModeModelProvider = ExerciseModeModelFamily();

/// See also [ExerciseModeModel].
class ExerciseModeModelFamily extends Family<ModeData> {
  /// See also [ExerciseModeModel].
  const ExerciseModeModelFamily();

  /// See also [ExerciseModeModel].
  ExerciseModeModelProvider call(
    Map<String, dynamic> exercise,
  ) {
    return ExerciseModeModelProvider(
      exercise,
    );
  }

  @override
  ExerciseModeModelProvider getProviderOverride(
    covariant ExerciseModeModelProvider provider,
  ) {
    return call(
      provider.exercise,
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
class ExerciseModeModelProvider
    extends AutoDisposeNotifierProviderImpl<ExerciseModeModel, ModeData> {
  /// See also [ExerciseModeModel].
  ExerciseModeModelProvider(
    Map<String, dynamic> exercise,
  ) : this._internal(
          () => ExerciseModeModel()..exercise = exercise,
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
        );

  ExerciseModeModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.exercise,
  }) : super.internal();

  final Map<String, dynamic> exercise;

  @override
  ModeData runNotifierBuild(
    covariant ExerciseModeModel notifier,
  ) {
    return notifier.build(
      exercise,
    );
  }

  @override
  Override overrideWith(ExerciseModeModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ExerciseModeModelProvider._internal(
        () => create()..exercise = exercise,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        exercise: exercise,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ExerciseModeModel, ModeData>
      createElement() {
    return _ExerciseModeModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ExerciseModeModelProvider && other.exercise == exercise;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, exercise.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ExerciseModeModelRef on AutoDisposeNotifierProviderRef<ModeData> {
  /// The parameter `exercise` of this provider.
  Map<String, dynamic> get exercise;
}

class _ExerciseModeModelProviderElement
    extends AutoDisposeNotifierProviderElement<ExerciseModeModel, ModeData>
    with ExerciseModeModelRef {
  _ExerciseModeModelProviderElement(super.provider);

  @override
  Map<String, dynamic> get exercise =>
      (origin as ExerciseModeModelProvider).exercise;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
