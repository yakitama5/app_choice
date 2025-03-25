// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'my_posts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myPostsHash() => r'552017d345328ab05a617e08b3ba75d81665ed4c';

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

/// See also [myPosts].
@ProviderFor(myPosts)
const myPostsProvider = MyPostsFamily();

/// See also [myPosts].
class MyPostsFamily extends Family<AsyncValue<PageInfo<Post>>> {
  /// See also [myPosts].
  const MyPostsFamily();

  /// See also [myPosts].
  MyPostsProvider call({required int page}) {
    return MyPostsProvider(page: page);
  }

  @override
  MyPostsProvider getProviderOverride(covariant MyPostsProvider provider) {
    return call(page: provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myPostsProvider';
}

/// See also [myPosts].
class MyPostsProvider extends AutoDisposeFutureProvider<PageInfo<Post>> {
  /// See also [myPosts].
  MyPostsProvider({required int page})
    : this._internal(
        (ref) => myPosts(ref as MyPostsRef, page: page),
        from: myPostsProvider,
        name: r'myPostsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$myPostsHash,
        dependencies: MyPostsFamily._dependencies,
        allTransitiveDependencies: MyPostsFamily._allTransitiveDependencies,
        page: page,
      );

  MyPostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<PageInfo<Post>> Function(MyPostsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyPostsProvider._internal(
        (ref) => create(ref as MyPostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PageInfo<Post>> createElement() {
    return _MyPostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyPostsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyPostsRef on AutoDisposeFutureProviderRef<PageInfo<Post>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _MyPostsProviderElement
    extends AutoDisposeFutureProviderElement<PageInfo<Post>>
    with MyPostsRef {
  _MyPostsProviderElement(super.provider);

  @override
  int get page => (origin as MyPostsProvider).page;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
