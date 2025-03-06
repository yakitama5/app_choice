// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_vote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FirestoreVoteModel _$FirestoreVoteModelFromJson(Map<String, dynamic> json) {
  return _FirestoreVoteModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreVoteModel {
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get choicesId => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FirestoreVoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreVoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreVoteModelCopyWith<FirestoreVoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreVoteModelCopyWith<$Res> {
  factory $FirestoreVoteModelCopyWith(
    FirestoreVoteModel value,
    $Res Function(FirestoreVoteModel) then,
  ) = _$FirestoreVoteModelCopyWithImpl<$Res, FirestoreVoteModel>;
  @useResult
  $Res call({
    String id,
    String author,
    String choicesId,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class _$FirestoreVoteModelCopyWithImpl<$Res, $Val extends FirestoreVoteModel>
    implements $FirestoreVoteModelCopyWith<$Res> {
  _$FirestoreVoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreVoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? choicesId = null,
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
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String,
            choicesId:
                null == choicesId
                    ? _value.choicesId
                    : choicesId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FirestoreVoteModelImplCopyWith<$Res>
    implements $FirestoreVoteModelCopyWith<$Res> {
  factory _$$FirestoreVoteModelImplCopyWith(
    _$FirestoreVoteModelImpl value,
    $Res Function(_$FirestoreVoteModelImpl) then,
  ) = __$$FirestoreVoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String author,
    String choicesId,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class __$$FirestoreVoteModelImplCopyWithImpl<$Res>
    extends _$FirestoreVoteModelCopyWithImpl<$Res, _$FirestoreVoteModelImpl>
    implements _$$FirestoreVoteModelImplCopyWith<$Res> {
  __$$FirestoreVoteModelImplCopyWithImpl(
    _$FirestoreVoteModelImpl _value,
    $Res Function(_$FirestoreVoteModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FirestoreVoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? choicesId = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FirestoreVoteModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String,
        choicesId:
            null == choicesId
                ? _value.choicesId
                : choicesId // ignore: cast_nullable_to_non_nullable
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
class _$FirestoreVoteModelImpl implements _FirestoreVoteModel {
  const _$FirestoreVoteModelImpl({
    required this.id,
    required this.author,
    required this.choicesId,
    @timestampKey this.createdAt,
    @timestampKey this.updatedAt,
  });

  factory _$FirestoreVoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreVoteModelImplFromJson(json);

  @override
  final String id;
  @override
  final String author;
  @override
  final String choicesId;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreVoteModel(id: $id, author: $author, choicesId: $choicesId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreVoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.choicesId, choicesId) ||
                other.choicesId == choicesId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, author, choicesId, createdAt, updatedAt);

  /// Create a copy of FirestoreVoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreVoteModelImplCopyWith<_$FirestoreVoteModelImpl> get copyWith =>
      __$$FirestoreVoteModelImplCopyWithImpl<_$FirestoreVoteModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreVoteModelImplToJson(this);
  }
}

abstract class _FirestoreVoteModel implements FirestoreVoteModel {
  const factory _FirestoreVoteModel({
    required final String id,
    required final String author,
    required final String choicesId,
    @timestampKey final DateTime? createdAt,
    @timestampKey final DateTime? updatedAt,
  }) = _$FirestoreVoteModelImpl;

  factory _FirestoreVoteModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreVoteModelImpl.fromJson;

  @override
  String get id;
  @override
  String get author;
  @override
  String get choicesId;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreVoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreVoteModelImplCopyWith<_$FirestoreVoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
