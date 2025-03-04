// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_my_post_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myPostCollectionRefHash() =>
    r'2a64497f44f75faf7b82ed3d7acfe06755e501e1';

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
/// Copied from [myPostCollectionRef].
@ProviderFor(myPostCollectionRef)
const myPostCollectionRefProvider = MyPostCollectionRefFamily();

/// コレクションの参照
///
/// Copied from [myPostCollectionRef].
class MyPostCollectionRefFamily
    extends Family<CollectionReference<FirestorePostModel>> {
  /// コレクションの参照
  ///
  /// Copied from [myPostCollectionRef].
  const MyPostCollectionRefFamily();

  /// コレクションの参照
  ///
  /// Copied from [myPostCollectionRef].
  MyPostCollectionRefProvider call({required String userId}) {
    return MyPostCollectionRefProvider(userId: userId);
  }

  @override
  MyPostCollectionRefProvider getProviderOverride(
    covariant MyPostCollectionRefProvider provider,
  ) {
    return call(userId: provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myPostCollectionRefProvider';
}

/// コレクションの参照
///
/// Copied from [myPostCollectionRef].
class MyPostCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestorePostModel>> {
  /// コレクションの参照
  ///
  /// Copied from [myPostCollectionRef].
  MyPostCollectionRefProvider({required String userId})
    : this._internal(
        (ref) =>
            myPostCollectionRef(ref as MyPostCollectionRefRef, userId: userId),
        from: myPostCollectionRefProvider,
        name: r'myPostCollectionRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$myPostCollectionRefHash,
        dependencies: MyPostCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            MyPostCollectionRefFamily._allTransitiveDependencies,
        userId: userId,
      );

  MyPostCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    CollectionReference<FirestorePostModel> Function(
      MyPostCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyPostCollectionRefProvider._internal(
        (ref) => create(ref as MyPostCollectionRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<CollectionReference<FirestorePostModel>>
  createElement() {
    return _MyPostCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyPostCollectionRefProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyPostCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestorePostModel>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _MyPostCollectionRefProviderElement
    extends AutoDisposeProviderElement<CollectionReference<FirestorePostModel>>
    with MyPostCollectionRefRef {
  _MyPostCollectionRefProviderElement(super.provider);

  @override
  String get userId => (origin as MyPostCollectionRefProvider).userId;
}

String _$myPostDocumentRefHash() => r'd68bec1eb04b9f3029f0899392ee3fe2470391a4';

/// ドキュメントの参照
///
/// Copied from [myPostDocumentRef].
@ProviderFor(myPostDocumentRef)
const myPostDocumentRefProvider = MyPostDocumentRefFamily();

/// ドキュメントの参照
///
/// Copied from [myPostDocumentRef].
class MyPostDocumentRefFamily
    extends Family<DocumentReference<FirestorePostModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [myPostDocumentRef].
  const MyPostDocumentRefFamily();

  /// ドキュメントの参照
  ///
  /// Copied from [myPostDocumentRef].
  MyPostDocumentRefProvider call({required String userId, String? postId}) {
    return MyPostDocumentRefProvider(userId: userId, postId: postId);
  }

  @override
  MyPostDocumentRefProvider getProviderOverride(
    covariant MyPostDocumentRefProvider provider,
  ) {
    return call(userId: provider.userId, postId: provider.postId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myPostDocumentRefProvider';
}

/// ドキュメントの参照
///
/// Copied from [myPostDocumentRef].
class MyPostDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestorePostModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [myPostDocumentRef].
  MyPostDocumentRefProvider({required String userId, String? postId})
    : this._internal(
        (ref) => myPostDocumentRef(
          ref as MyPostDocumentRefRef,
          userId: userId,
          postId: postId,
        ),
        from: myPostDocumentRefProvider,
        name: r'myPostDocumentRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$myPostDocumentRefHash,
        dependencies: MyPostDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            MyPostDocumentRefFamily._allTransitiveDependencies,
        userId: userId,
        postId: postId,
      );

  MyPostDocumentRefProvider._internal(
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
  final String? postId;

  @override
  Override overrideWith(
    DocumentReference<FirestorePostModel> Function(
      MyPostDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyPostDocumentRefProvider._internal(
        (ref) => create(ref as MyPostDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestorePostModel>>
  createElement() {
    return _MyPostDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyPostDocumentRefProvider &&
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
mixin MyPostDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestorePostModel>> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `postId` of this provider.
  String? get postId;
}

class _MyPostDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestorePostModel>>
    with MyPostDocumentRefRef {
  _MyPostDocumentRefProviderElement(super.provider);

  @override
  String get userId => (origin as MyPostDocumentRefProvider).userId;
  @override
  String? get postId => (origin as MyPostDocumentRefProvider).postId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
