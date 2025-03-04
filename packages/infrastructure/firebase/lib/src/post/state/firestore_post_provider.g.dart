// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_post_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postCollectionRefHash() => r'30125390efd8972a11cc48248eab4b56ddc724e1';

/// コレクションの参照
///
/// Copied from [postCollectionRef].
@ProviderFor(postCollectionRef)
final postCollectionRefProvider =
    AutoDisposeProvider<CollectionReference<FirestorePostModel>>.internal(
      postCollectionRef,
      name: r'postCollectionRefProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$postCollectionRefHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PostCollectionRefRef =
    AutoDisposeProviderRef<CollectionReference<FirestorePostModel>>;
String _$postDocumentRefHash() => r'd26cfd9404abaf49a30bd42b545202c1e78ebeb8';

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

/// ドキュメントの参照
///
/// Copied from [postDocumentRef].
@ProviderFor(postDocumentRef)
const postDocumentRefProvider = PostDocumentRefFamily();

/// ドキュメントの参照
///
/// Copied from [postDocumentRef].
class PostDocumentRefFamily
    extends Family<DocumentReference<FirestorePostModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [postDocumentRef].
  const PostDocumentRefFamily();

  /// ドキュメントの参照
  ///
  /// Copied from [postDocumentRef].
  PostDocumentRefProvider call({String? postId}) {
    return PostDocumentRefProvider(postId: postId);
  }

  @override
  PostDocumentRefProvider getProviderOverride(
    covariant PostDocumentRefProvider provider,
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
  String? get name => r'postDocumentRefProvider';
}

/// ドキュメントの参照
///
/// Copied from [postDocumentRef].
class PostDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestorePostModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [postDocumentRef].
  PostDocumentRefProvider({String? postId})
    : this._internal(
        (ref) => postDocumentRef(ref as PostDocumentRefRef, postId: postId),
        from: postDocumentRefProvider,
        name: r'postDocumentRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$postDocumentRefHash,
        dependencies: PostDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            PostDocumentRefFamily._allTransitiveDependencies,
        postId: postId,
      );

  PostDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final String? postId;

  @override
  Override overrideWith(
    DocumentReference<FirestorePostModel> Function(PostDocumentRefRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostDocumentRefProvider._internal(
        (ref) => create(ref as PostDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestorePostModel>>
  createElement() {
    return _PostDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDocumentRefProvider && other.postId == postId;
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
mixin PostDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestorePostModel>> {
  /// The parameter `postId` of this provider.
  String? get postId;
}

class _PostDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestorePostModel>>
    with PostDocumentRefRef {
  _PostDocumentRefProviderElement(super.provider);

  @override
  String? get postId => (origin as PostDocumentRefProvider).postId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
