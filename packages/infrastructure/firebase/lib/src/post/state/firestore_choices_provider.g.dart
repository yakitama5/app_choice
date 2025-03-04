// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_choices_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$choicesCollectionRefHash() =>
    r'82511893772aea0c933a9f04bdeae63b37ea3800';

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

/// コレクションの参照
///
/// Copied from [choicesCollectionRef].
@ProviderFor(choicesCollectionRef)
const choicesCollectionRefProvider = ChoicesCollectionRefFamily();

/// コレクションの参照
///
/// Copied from [choicesCollectionRef].
class ChoicesCollectionRefFamily
    extends Family<CollectionReference<FirestoreChoicesModel>> {
  /// コレクションの参照
  ///
  /// Copied from [choicesCollectionRef].
  const ChoicesCollectionRefFamily();

  /// コレクションの参照
  ///
  /// Copied from [choicesCollectionRef].
  ChoicesCollectionRefProvider call({required String postId}) {
    return ChoicesCollectionRefProvider(postId: postId);
  }

  @override
  ChoicesCollectionRefProvider getProviderOverride(
    covariant ChoicesCollectionRefProvider provider,
  ) {
    return call(postId: provider.postId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'choicesCollectionRefProvider';
}

/// コレクションの参照
///
/// Copied from [choicesCollectionRef].
class ChoicesCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestoreChoicesModel>> {
  /// コレクションの参照
  ///
  /// Copied from [choicesCollectionRef].
  ChoicesCollectionRefProvider({required String postId})
    : this._internal(
        (ref) => choicesCollectionRef(
          ref as ChoicesCollectionRefRef,
          postId: postId,
        ),
        from: choicesCollectionRefProvider,
        name: r'choicesCollectionRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$choicesCollectionRefHash,
        dependencies: ChoicesCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            ChoicesCollectionRefFamily._allTransitiveDependencies,
        postId: postId,
      );

  ChoicesCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final String postId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreChoicesModel> Function(
      ChoicesCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChoicesCollectionRefProvider._internal(
        (ref) => create(ref as ChoicesCollectionRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<CollectionReference<FirestoreChoicesModel>>
  createElement() {
    return _ChoicesCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChoicesCollectionRefProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChoicesCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreChoicesModel>> {
  /// The parameter `postId` of this provider.
  String get postId;
}

class _ChoicesCollectionRefProviderElement
    extends
        AutoDisposeProviderElement<CollectionReference<FirestoreChoicesModel>>
    with ChoicesCollectionRefRef {
  _ChoicesCollectionRefProviderElement(super.provider);

  @override
  String get postId => (origin as ChoicesCollectionRefProvider).postId;
}

String _$choicesDocumentRefHash() =>
    r'18fc64421f550217ca269720e2896692ec469f9f';

/// ドキュメントの参照
///
/// Copied from [choicesDocumentRef].
@ProviderFor(choicesDocumentRef)
const choicesDocumentRefProvider = ChoicesDocumentRefFamily();

/// ドキュメントの参照
///
/// Copied from [choicesDocumentRef].
class ChoicesDocumentRefFamily
    extends Family<DocumentReference<FirestoreChoicesModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [choicesDocumentRef].
  const ChoicesDocumentRefFamily();

  /// ドキュメントの参照
  ///
  /// Copied from [choicesDocumentRef].
  ChoicesDocumentRefProvider call({required String postId, String? choicesId}) {
    return ChoicesDocumentRefProvider(postId: postId, choicesId: choicesId);
  }

  @override
  ChoicesDocumentRefProvider getProviderOverride(
    covariant ChoicesDocumentRefProvider provider,
  ) {
    return call(postId: provider.postId, choicesId: provider.choicesId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'choicesDocumentRefProvider';
}

/// ドキュメントの参照
///
/// Copied from [choicesDocumentRef].
class ChoicesDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreChoicesModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [choicesDocumentRef].
  ChoicesDocumentRefProvider({required String postId, String? choicesId})
    : this._internal(
        (ref) => choicesDocumentRef(
          ref as ChoicesDocumentRefRef,
          postId: postId,
          choicesId: choicesId,
        ),
        from: choicesDocumentRefProvider,
        name: r'choicesDocumentRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$choicesDocumentRefHash,
        dependencies: ChoicesDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            ChoicesDocumentRefFamily._allTransitiveDependencies,
        postId: postId,
        choicesId: choicesId,
      );

  ChoicesDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
    required this.choicesId,
  }) : super.internal();

  final String postId;
  final String? choicesId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreChoicesModel> Function(
      ChoicesDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChoicesDocumentRefProvider._internal(
        (ref) => create(ref as ChoicesDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
        choicesId: choicesId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreChoicesModel>>
  createElement() {
    return _ChoicesDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChoicesDocumentRefProvider &&
        other.postId == postId &&
        other.choicesId == choicesId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, choicesId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChoicesDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreChoicesModel>> {
  /// The parameter `postId` of this provider.
  String get postId;

  /// The parameter `choicesId` of this provider.
  String? get choicesId;
}

class _ChoicesDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreChoicesModel>>
    with ChoicesDocumentRefRef {
  _ChoicesDocumentRefProviderElement(super.provider);

  @override
  String get postId => (origin as ChoicesDocumentRefProvider).postId;
  @override
  String? get choicesId => (origin as ChoicesDocumentRefProvider).choicesId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
