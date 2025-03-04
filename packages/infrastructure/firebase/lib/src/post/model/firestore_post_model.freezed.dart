// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FirestorePostModel _$FirestorePostModelFromJson(Map<String, dynamic> json) {
  return _FirestorePostModel.fromJson(json);
}

/// @nodoc
mixin _$FirestorePostModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FirestorePostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestorePostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestorePostModelCopyWith<FirestorePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestorePostModelCopyWith<$Res> {
  factory $FirestorePostModelCopyWith(
    FirestorePostModel value,
    $Res Function(FirestorePostModel) then,
  ) = _$FirestorePostModelCopyWithImpl<$Res, FirestorePostModel>;
  @useResult
  $Res call({
    String id,
    String title,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class _$FirestorePostModelCopyWithImpl<$Res, $Val extends FirestorePostModel>
    implements $FirestorePostModelCopyWith<$Res> {
  _$FirestorePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestorePostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FirestorePostModelImplCopyWith<$Res>
    implements $FirestorePostModelCopyWith<$Res> {
  factory _$$FirestorePostModelImplCopyWith(
    _$FirestorePostModelImpl value,
    $Res Function(_$FirestorePostModelImpl) then,
  ) = __$$FirestorePostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class __$$FirestorePostModelImplCopyWithImpl<$Res>
    extends _$FirestorePostModelCopyWithImpl<$Res, _$FirestorePostModelImpl>
    implements _$$FirestorePostModelImplCopyWith<$Res> {
  __$$FirestorePostModelImplCopyWithImpl(
    _$FirestorePostModelImpl _value,
    $Res Function(_$FirestorePostModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FirestorePostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FirestorePostModelImpl(
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
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestorePostModelImpl implements _FirestorePostModel {
  const _$FirestorePostModelImpl({
    required this.id,
    required this.title,
    @timestampKey this.createdAt,
    @timestampKey this.updatedAt,
  });

  factory _$FirestorePostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestorePostModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestorePostModel(id: $id, title: $title, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestorePostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, createdAt, updatedAt);

  /// Create a copy of FirestorePostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestorePostModelImplCopyWith<_$FirestorePostModelImpl> get copyWith =>
      __$$FirestorePostModelImplCopyWithImpl<_$FirestorePostModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestorePostModelImplToJson(this);
  }
}

abstract class _FirestorePostModel implements FirestorePostModel {
  const factory _FirestorePostModel({
    required final String id,
    required final String title,
    @timestampKey final DateTime? createdAt,
    @timestampKey final DateTime? updatedAt,
  }) = _$FirestorePostModelImpl;

  factory _FirestorePostModel.fromJson(Map<String, dynamic> json) =
      _$FirestorePostModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestorePostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestorePostModelImplCopyWith<_$FirestorePostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
