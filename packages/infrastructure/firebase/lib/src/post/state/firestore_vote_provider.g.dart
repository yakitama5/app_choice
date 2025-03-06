// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_vote_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$voteCollectionRefHash() => r'507014fc20790f7f53f5af55d559cd2626e45a2e';

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
/// Copied from [voteCollectionRef].
@ProviderFor(voteCollectionRef)
const voteCollectionRefProvider = VoteCollectionRefFamily();

/// コレクションの参照
///
/// Copied from [voteCollectionRef].
class VoteCollectionRefFamily
    extends Family<CollectionReference<FirestoreVoteModel>> {
  /// コレクションの参照
  ///
  /// Copied from [voteCollectionRef].
  const VoteCollectionRefFamily();

  /// コレクションの参照
  ///
  /// Copied from [voteCollectionRef].
  VoteCollectionRefProvider call({required String postId}) {
    return VoteCollectionRefProvider(postId: postId);
  }

  @override
  VoteCollectionRefProvider getProviderOverride(
    covariant VoteCollectionRefProvider provider,
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
  String? get name => r'voteCollectionRefProvider';
}

/// コレクションの参照
///
/// Copied from [voteCollectionRef].
class VoteCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestoreVoteModel>> {
  /// コレクションの参照
  ///
  /// Copied from [voteCollectionRef].
  VoteCollectionRefProvider({required String postId})
    : this._internal(
        (ref) => voteCollectionRef(ref as VoteCollectionRefRef, postId: postId),
        from: voteCollectionRefProvider,
        name: r'voteCollectionRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$voteCollectionRefHash,
        dependencies: VoteCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            VoteCollectionRefFamily._allTransitiveDependencies,
        postId: postId,
      );

  VoteCollectionRefProvider._internal(
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
    CollectionReference<FirestoreVoteModel> Function(
      VoteCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VoteCollectionRefProvider._internal(
        (ref) => create(ref as VoteCollectionRefRef),
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
  AutoDisposeProviderElement<CollectionReference<FirestoreVoteModel>>
  createElement() {
    return _VoteCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VoteCollectionRefProvider && other.postId == postId;
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
mixin VoteCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreVoteModel>> {
  /// The parameter `postId` of this provider.
  String get postId;
}

class _VoteCollectionRefProviderElement
    extends AutoDisposeProviderElement<CollectionReference<FirestoreVoteModel>>
    with VoteCollectionRefRef {
  _VoteCollectionRefProviderElement(super.provider);

  @override
  String get postId => (origin as VoteCollectionRefProvider).postId;
}

String _$voteDocumentRefHash() => r'bff315ab125c182e3d5b26ac18c073dbbce64c5e';

/// ドキュメントの参照
///
/// Copied from [voteDocumentRef].
@ProviderFor(voteDocumentRef)
const voteDocumentRefProvider = VoteDocumentRefFamily();

/// ドキュメントの参照
///
/// Copied from [voteDocumentRef].
class VoteDocumentRefFamily
    extends Family<DocumentReference<FirestoreVoteModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [voteDocumentRef].
  const VoteDocumentRefFamily();

  /// ドキュメントの参照
  ///
  /// Copied from [voteDocumentRef].
  VoteDocumentRefProvider call({required String postId, String? voteId}) {
    return VoteDocumentRefProvider(postId: postId, voteId: voteId);
  }

  @override
  VoteDocumentRefProvider getProviderOverride(
    covariant VoteDocumentRefProvider provider,
  ) {
    return call(postId: provider.postId, voteId: provider.voteId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'voteDocumentRefProvider';
}

/// ドキュメントの参照
///
/// Copied from [voteDocumentRef].
class VoteDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreVoteModel>> {
  /// ドキュメントの参照
  ///
  /// Copied from [voteDocumentRef].
  VoteDocumentRefProvider({required String postId, String? voteId})
    : this._internal(
        (ref) => voteDocumentRef(
          ref as VoteDocumentRefRef,
          postId: postId,
          voteId: voteId,
        ),
        from: voteDocumentRefProvider,
        name: r'voteDocumentRefProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$voteDocumentRefHash,
        dependencies: VoteDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            VoteDocumentRefFamily._allTransitiveDependencies,
        postId: postId,
        voteId: voteId,
      );

  VoteDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
    required this.voteId,
  }) : super.internal();

  final String postId;
  final String? voteId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreVoteModel> Function(VoteDocumentRefRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VoteDocumentRefProvider._internal(
        (ref) => create(ref as VoteDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
        voteId: voteId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreVoteModel>>
  createElement() {
    return _VoteDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VoteDocumentRefProvider &&
        other.postId == postId &&
        other.voteId == voteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, voteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VoteDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreVoteModel>> {
  /// The parameter `postId` of this provider.
  String get postId;

  /// The parameter `voteId` of this provider.
  String? get voteId;
}

class _VoteDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreVoteModel>>
    with VoteDocumentRefRef {
  _VoteDocumentRefProviderElement(super.provider);

  @override
  String get postId => (origin as VoteDocumentRefProvider).postId;
  @override
  String? get voteId => (origin as VoteDocumentRefProvider).voteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
