// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  HowToDecide get howToDecide => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  List<Choices> get choicesList => throw _privateConstructorUsedError;
  List<Vote>? get voteList => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get voted => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call({
    String id,
    String title,
    HowToDecide howToDecide,
    int viewCount,
    int voteCount,
    List<Choices> choicesList,
    List<Vote>? voteList,
    String author,
    DateTime createdAt,
    DateTime updatedAt,
    bool voted,
  });
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? howToDecide = null,
    Object? viewCount = null,
    Object? voteCount = null,
    Object? choicesList = null,
    Object? voteList = freezed,
    Object? author = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? voted = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            howToDecide:
                null == howToDecide
                    ? _value.howToDecide
                    : howToDecide // ignore: cast_nullable_to_non_nullable
                        as HowToDecide,
            viewCount:
                null == viewCount
                    ? _value.viewCount
                    : viewCount // ignore: cast_nullable_to_non_nullable
                        as int,
            voteCount:
                null == voteCount
                    ? _value.voteCount
                    : voteCount // ignore: cast_nullable_to_non_nullable
                        as int,
            choicesList:
                null == choicesList
                    ? _value.choicesList
                    : choicesList // ignore: cast_nullable_to_non_nullable
                        as List<Choices>,
            voteList:
                freezed == voteList
                    ? _value.voteList
                    : voteList // ignore: cast_nullable_to_non_nullable
                        as List<Vote>?,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            voted:
                null == voted
                    ? _value.voted
                    : voted // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
    _$PostImpl value,
    $Res Function(_$PostImpl) then,
  ) = __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    HowToDecide howToDecide,
    int viewCount,
    int voteCount,
    List<Choices> choicesList,
    List<Vote>? voteList,
    String author,
    DateTime createdAt,
    DateTime updatedAt,
    bool voted,
  });
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
    : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? howToDecide = null,
    Object? viewCount = null,
    Object? voteCount = null,
    Object? choicesList = null,
    Object? voteList = freezed,
    Object? author = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? voted = null,
  }) {
    return _then(
      _$PostImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        howToDecide:
            null == howToDecide
                ? _value.howToDecide
                : howToDecide // ignore: cast_nullable_to_non_nullable
                    as HowToDecide,
        viewCount:
            null == viewCount
                ? _value.viewCount
                : viewCount // ignore: cast_nullable_to_non_nullable
                    as int,
        voteCount:
            null == voteCount
                ? _value.voteCount
                : voteCount // ignore: cast_nullable_to_non_nullable
                    as int,
        choicesList:
            null == choicesList
                ? _value._choicesList
                : choicesList // ignore: cast_nullable_to_non_nullable
                    as List<Choices>,
        voteList:
            freezed == voteList
                ? _value._voteList
                : voteList // ignore: cast_nullable_to_non_nullable
                    as List<Vote>?,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        voted:
            null == voted
                ? _value.voted
                : voted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PostImpl implements _Post {
  const _$PostImpl({
    required this.id,
    required this.title,
    required this.howToDecide,
    required this.viewCount,
    required this.voteCount,
    required final List<Choices> choicesList,
    final List<Vote>? voteList,
    required this.author,
    required this.createdAt,
    required this.updatedAt,
    this.voted = false,
  }) : _choicesList = choicesList,
       _voteList = voteList;

  @override
  final String id;
  @override
  final String title;
  @override
  final HowToDecide howToDecide;
  @override
  final int viewCount;
  @override
  final int voteCount;
  final List<Choices> _choicesList;
  @override
  List<Choices> get choicesList {
    if (_choicesList is EqualUnmodifiableListView) return _choicesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choicesList);
  }

  final List<Vote>? _voteList;
  @override
  List<Vote>? get voteList {
    final value = _voteList;
    if (value == null) return null;
    if (_voteList is EqualUnmodifiableListView) return _voteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String author;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final bool voted;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, howToDecide: $howToDecide, viewCount: $viewCount, voteCount: $voteCount, choicesList: $choicesList, voteList: $voteList, author: $author, createdAt: $createdAt, updatedAt: $updatedAt, voted: $voted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.howToDecide, howToDecide) ||
                other.howToDecide == howToDecide) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality().equals(
              other._choicesList,
              _choicesList,
            ) &&
            const DeepCollectionEquality().equals(other._voteList, _voteList) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.voted, voted) || other.voted == voted));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    howToDecide,
    viewCount,
    voteCount,
    const DeepCollectionEquality().hash(_choicesList),
    const DeepCollectionEquality().hash(_voteList),
    author,
    createdAt,
    updatedAt,
    voted,
  );

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);
}

abstract class _Post implements Post {
  const factory _Post({
    required final String id,
    required final String title,
    required final HowToDecide howToDecide,
    required final int viewCount,
    required final int voteCount,
    required final List<Choices> choicesList,
    final List<Vote>? voteList,
    required final String author,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final bool voted,
  }) = _$PostImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  HowToDecide get howToDecide;
  @override
  int get viewCount;
  @override
  int get voteCount;
  @override
  List<Choices> get choicesList;
  @override
  List<Vote>? get voteList;
  @override
  String get author;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get voted;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
