// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FirestoreUserModel _$FirestoreUserModelFromJson(Map<String, dynamic> json) {
  return _FirestoreUserModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreUserModel {
  String get id => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FirestoreUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreUserModelCopyWith<FirestoreUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreUserModelCopyWith<$Res> {
  factory $FirestoreUserModelCopyWith(
    FirestoreUserModel value,
    $Res Function(FirestoreUserModel) then,
  ) = _$FirestoreUserModelCopyWithImpl<$Res, FirestoreUserModel>;
  @useResult
  $Res call({
    String id,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class _$FirestoreUserModelCopyWithImpl<$Res, $Val extends FirestoreUserModel>
    implements $FirestoreUserModelCopyWith<$Res> {
  _$FirestoreUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
abstract class _$$FirestoreUserModelImplCopyWith<$Res>
    implements $FirestoreUserModelCopyWith<$Res> {
  factory _$$FirestoreUserModelImplCopyWith(
    _$FirestoreUserModelImpl value,
    $Res Function(_$FirestoreUserModelImpl) then,
  ) = __$$FirestoreUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class __$$FirestoreUserModelImplCopyWithImpl<$Res>
    extends _$FirestoreUserModelCopyWithImpl<$Res, _$FirestoreUserModelImpl>
    implements _$$FirestoreUserModelImplCopyWith<$Res> {
  __$$FirestoreUserModelImplCopyWithImpl(
    _$FirestoreUserModelImpl _value,
    $Res Function(_$FirestoreUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FirestoreUserModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
class _$FirestoreUserModelImpl implements _FirestoreUserModel {
  const _$FirestoreUserModelImpl({
    required this.id,
    @timestampKey this.createdAt,
    @timestampKey this.updatedAt,
  });

  factory _$FirestoreUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreUserModelImplFromJson(json);

  @override
  final String id;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreUserModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt);

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreUserModelImplCopyWith<_$FirestoreUserModelImpl> get copyWith =>
      __$$FirestoreUserModelImplCopyWithImpl<_$FirestoreUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreUserModelImplToJson(this);
  }
}

abstract class _FirestoreUserModel implements FirestoreUserModel {
  const factory _FirestoreUserModel({
    required final String id,
    @timestampKey final DateTime? createdAt,
    @timestampKey final DateTime? updatedAt,
  }) = _$FirestoreUserModelImpl;

  factory _FirestoreUserModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreUserModelImpl.fromJson;

  @override
  String get id;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreUserModelImplCopyWith<_$FirestoreUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
