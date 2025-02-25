// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_my_choices_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myChoicesCollectionRefHash() =>
    r'18cd11f1d7b4f8bd3cf8bafa967322c25bc750c8';

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
/// Copied from [myChoicesCollectionRef].
@ProviderFor(myChoicesCollectionRef)
const myChoicesCollectionRefProvider = MyChoicesCollectionRefFamily();

/// コレクションの参照
///
/// Copied from [myChoicesCollectionRef].
class MyChoicesCollectionRefFamily
    extends Family<CollectionReference<FirestoreChoicesModel>> {
  /// コレクションの参照
  ///
  /// Copied from [myChoicesCollectionRef].
  const MyChoicesCollectionRefFamily();

  /// コレクションの参照
  ///
  /// Copied from [myChoicesCollectionRef].
  MyChoicesCollectionRefProvider call({
    required String userId,
    required String postId,
  }) {
    return MyChoicesCollectionRefProvider(
      userId: userId,
      postId: postId,
    );
  }

  @override
  MyChoicesCollectionRefProvider getProviderOverride(
    covariant MyChoicesCollectionRefProvider provider,
  ) {
    return call(
      userId: provider.userId,
      postId: provider.postId,
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
  String? get name => r'myChoicesCollectionRefProvider';
}

/// コレクションの参照
///
/// Copied from [myChoicesCollectionRef].
class MyChoicesCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestoreChoicesModel>> {
  /// コレクションの参照
  ///
  /// Copied from [myChoicesCollectionRef].
  MyChoicesCollectionRefProvider({
    required String userId,
    required String postId,
  }) : this._internal(
          (ref) => myChoicesCollectionRef(
            ref as MyChoicesCollectionRefRef,
            userId: userId,
            postId: postId,
          ),
          from: myChoicesCollectionRefProvider,
          name: r'myChoicesCollectionRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myChoicesCollectionRefHash,
          dependencies: MyChoicesCollectionRefFamily._dependencies,
          allTransitiveDependencies:
              MyChoicesCollectionRefFamily._allTransitiveDependencies,
          userId: userId,
          postId: postId,
        );

  MyChoicesCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.postId,
  }) : super.internal();

  final String userId;
  final String postId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreChoicesModel> Function(
            MyChoicesCollectionRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyChoicesCollectionRefProvider._internal(
        (ref) => create(ref as MyChoicesCollectionRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<CollectionReference<FirestoreChoicesModel>>
      createElement() {
    return _MyChoicesCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyChoicesCollectionRefProvider &&
        other.userId == userId &&
        other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyChoicesCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreChoicesModel>> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `postId` of this provider.
  String get postId;
}

class _MyChoicesCollectionRefProviderElement extends AutoDisposeProviderElement<
    CollectionReference<FirestoreChoicesModel>> with MyChoicesCollectionRefRef {
  _MyChoicesCollectionRefProviderElement(super.provider);

  @override
  String get userId => (origin as MyChoicesCollectionRefProvider).userId;
  @override
  String get postId => (origin as MyChoicesCollectionRefProvider).postId;
}

String _$myChoicesDocumentRefHash() =>
    r'94c7dc11f9b2d2f4188df79b0678a7a95b3806bd';

/// ドキュメントの参照
///
/// Copied from [myChoicesDocumentRef].
@ProviderFor(myChoicesDocumentRef)
const myChoicesDocumentRefProvider = MyChoicesDocumentRefFamily();

/// ドキュメントの参照
///
/// Copied from [myChoicesDocumentRef].
class MyChoicesDocumentRefFamily
    extends Family<DocumentReference<FirestoreChoicesModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [myChoicesDocumentRef].
  const MyChoicesDocumentRefFamily();

  /// ドキュメントの参照
  ///
  /// Copied from [myChoicesDocumentRef].
  MyChoicesDocumentRefProvider call({
    required String userId,
    required String postId,
    String? choicesId,
  }) {
    return MyChoicesDocumentRefProvider(
      userId: userId,
      postId: postId,
      choicesId: choicesId,
    );
  }

  @override
  MyChoicesDocumentRefProvider getProviderOverride(
    covariant MyChoicesDocumentRefProvider provider,
  ) {
    return call(
      userId: provider.userId,
      postId: provider.postId,
      choicesId: provider.choicesId,
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
  String? get name => r'myChoicesDocumentRefProvider';
}

/// ドキュメントの参照
///
/// Copied from [myChoicesDocumentRef].
class MyChoicesDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreChoicesModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [myChoicesDocumentRef].
  MyChoicesDocumentRefProvider({
    required String userId,
    required String postId,
    String? choicesId,
  }) : this._internal(
          (ref) => myChoicesDocumentRef(
            ref as MyChoicesDocumentRefRef,
            userId: userId,
            postId: postId,
            choicesId: choicesId,
          ),
          from: myChoicesDocumentRefProvider,
          name: r'myChoicesDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myChoicesDocumentRefHash,
          dependencies: MyChoicesDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              MyChoicesDocumentRefFamily._allTransitiveDependencies,
          userId: userId,
          postId: postId,
          choicesId: choicesId,
        );

  MyChoicesDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.postId,
    required this.choicesId,
  }) : super.internal();

  final String userId;
  final String postId;
  final String? choicesId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreChoicesModel> Function(
            MyChoicesDocumentRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyChoicesDocumentRefProvider._internal(
        (ref) => create(ref as MyChoicesDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        postId: postId,
        choicesId: choicesId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreChoicesModel>>
      createElement() {
    return _MyChoicesDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyChoicesDocumentRefProvider &&
        other.userId == userId &&
        other.postId == postId &&
        other.choicesId == choicesId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, choicesId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyChoicesDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreChoicesModel>> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `postId` of this provider.
  String get postId;

  /// The parameter `choicesId` of this provider.
  String? get choicesId;
}

class _MyChoicesDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreChoicesModel>>
    with MyChoicesDocumentRefRef {
  _MyChoicesDocumentRefProviderElement(super.provider);

  @override
  String get userId => (origin as MyChoicesDocumentRefProvider).userId;
  @override
  String get postId => (origin as MyChoicesDocumentRefProvider).postId;
  @override
  String? get choicesId => (origin as MyChoicesDocumentRefProvider).choicesId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
