// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getRandomNumberTriviaHash() =>
    r'924d89d05c2d939ac11fa8fb0b8f43e83bcef60e';

/// See also [getRandomNumberTrivia].
@ProviderFor(getRandomNumberTrivia)
final getRandomNumberTriviaProvider =
    AutoDisposeFutureProvider<NumberTriviaModel>.internal(
  getRandomNumberTrivia,
  name: r'getRandomNumberTriviaProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getRandomNumberTriviaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetRandomNumberTriviaRef
    = AutoDisposeFutureProviderRef<NumberTriviaModel>;
String _$getConcreteNumberTriviaHash() =>
    r'b7c10e5afa575bfbd381982ac87d55d334876500';

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

/// See also [getConcreteNumberTrivia].
@ProviderFor(getConcreteNumberTrivia)
const getConcreteNumberTriviaProvider = GetConcreteNumberTriviaFamily();

/// See also [getConcreteNumberTrivia].
class GetConcreteNumberTriviaFamily
    extends Family<AsyncValue<NumberTriviaModel>> {
  /// See also [getConcreteNumberTrivia].
  const GetConcreteNumberTriviaFamily();

  /// See also [getConcreteNumberTrivia].
  GetConcreteNumberTriviaProvider call(
    int number,
  ) {
    return GetConcreteNumberTriviaProvider(
      number,
    );
  }

  @override
  GetConcreteNumberTriviaProvider getProviderOverride(
    covariant GetConcreteNumberTriviaProvider provider,
  ) {
    return call(
      provider.number,
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
  String? get name => r'getConcreteNumberTriviaProvider';
}

/// See also [getConcreteNumberTrivia].
class GetConcreteNumberTriviaProvider
    extends AutoDisposeFutureProvider<NumberTriviaModel> {
  /// See also [getConcreteNumberTrivia].
  GetConcreteNumberTriviaProvider(
    int number,
  ) : this._internal(
          (ref) => getConcreteNumberTrivia(
            ref as GetConcreteNumberTriviaRef,
            number,
          ),
          from: getConcreteNumberTriviaProvider,
          name: r'getConcreteNumberTriviaProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getConcreteNumberTriviaHash,
          dependencies: GetConcreteNumberTriviaFamily._dependencies,
          allTransitiveDependencies:
              GetConcreteNumberTriviaFamily._allTransitiveDependencies,
          number: number,
        );

  GetConcreteNumberTriviaProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.number,
  }) : super.internal();

  final int number;

  @override
  Override overrideWith(
    FutureOr<NumberTriviaModel> Function(GetConcreteNumberTriviaRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetConcreteNumberTriviaProvider._internal(
        (ref) => create(ref as GetConcreteNumberTriviaRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        number: number,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<NumberTriviaModel> createElement() {
    return _GetConcreteNumberTriviaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetConcreteNumberTriviaProvider && other.number == number;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetConcreteNumberTriviaRef
    on AutoDisposeFutureProviderRef<NumberTriviaModel> {
  /// The parameter `number` of this provider.
  int get number;
}

class _GetConcreteNumberTriviaProviderElement
    extends AutoDisposeFutureProviderElement<NumberTriviaModel>
    with GetConcreteNumberTriviaRef {
  _GetConcreteNumberTriviaProviderElement(super.provider);

  @override
  int get number => (origin as GetConcreteNumberTriviaProvider).number;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
