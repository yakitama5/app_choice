// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_choices_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FirestoreChoicesModel _$FirestoreChoicesModelFromJson(
  Map<String, dynamic> json,
) {
  return _FirestoreChoicesModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreChoicesModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FirestoreChoicesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChoicesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChoicesModelCopyWith<FirestoreChoicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChoicesModelCopyWith<$Res> {
  factory $FirestoreChoicesModelCopyWith(
    FirestoreChoicesModel value,
    $Res Function(FirestoreChoicesModel) then,
  ) = _$FirestoreChoicesModelCopyWithImpl<$Res, FirestoreChoicesModel>;
  @useResult
  $Res call({
    String id,
    String title,
    int voteCount,
    bool selected,
    int sortOrder,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class _$FirestoreChoicesModelCopyWithImpl<
  $Res,
  $Val extends FirestoreChoicesModel
>
    implements $FirestoreChoicesModelCopyWith<$Res> {
  _$FirestoreChoicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChoicesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? voteCount = null,
    Object? selected = null,
    Object? sortOrder = null,
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
            voteCount:
                null == voteCount
                    ? _value.voteCount
                    : voteCount // ignore: cast_nullable_to_non_nullable
                        as int,
            selected:
                null == selected
                    ? _value.selected
                    : selected // ignore: cast_nullable_to_non_nullable
                        as bool,
            sortOrder:
                null == sortOrder
                    ? _value.sortOrder
                    : sortOrder // ignore: cast_nullable_to_non_nullable
                        as int,
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
abstract class _$$FirestoreChoicesModelImplCopyWith<$Res>
    implements $FirestoreChoicesModelCopyWith<$Res> {
  factory _$$FirestoreChoicesModelImplCopyWith(
    _$FirestoreChoicesModelImpl value,
    $Res Function(_$FirestoreChoicesModelImpl) then,
  ) = __$$FirestoreChoicesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    int voteCount,
    bool selected,
    int sortOrder,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  });
}

/// @nodoc
class __$$FirestoreChoicesModelImplCopyWithImpl<$Res>
    extends
        _$FirestoreChoicesModelCopyWithImpl<$Res, _$FirestoreChoicesModelImpl>
    implements _$$FirestoreChoicesModelImplCopyWith<$Res> {
  __$$FirestoreChoicesModelImplCopyWithImpl(
    _$FirestoreChoicesModelImpl _value,
    $Res Function(_$FirestoreChoicesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FirestoreChoicesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? voteCount = null,
    Object? selected = null,
    Object? sortOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$FirestoreChoicesModelImpl(
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
        voteCount:
            null == voteCount
                ? _value.voteCount
                : voteCount // ignore: cast_nullable_to_non_nullable
                    as int,
        selected:
            null == selected
                ? _value.selected
                : selected // ignore: cast_nullable_to_non_nullable
                    as bool,
        sortOrder:
            null == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$FirestoreChoicesModelImpl implements _FirestoreChoicesModel {
  const _$FirestoreChoicesModelImpl({
    required this.id,
    required this.title,
    required this.voteCount,
    required this.selected,
    required this.sortOrder,
    @timestampKey this.createdAt,
    @timestampKey this.updatedAt,
  });

  factory _$FirestoreChoicesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreChoicesModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int voteCount;
  @override
  final bool selected;
  @override
  final int sortOrder;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreChoicesModel(id: $id, title: $title, voteCount: $voteCount, selected: $selected, sortOrder: $sortOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChoicesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    voteCount,
    selected,
    sortOrder,
    createdAt,
    updatedAt,
  );

  /// Create a copy of FirestoreChoicesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChoicesModelImplCopyWith<_$FirestoreChoicesModelImpl>
  get copyWith =>
      __$$FirestoreChoicesModelImplCopyWithImpl<_$FirestoreChoicesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreChoicesModelImplToJson(this);
  }
}

abstract class _FirestoreChoicesModel implements FirestoreChoicesModel {
  const factory _FirestoreChoicesModel({
    required final String id,
    required final String title,
    required final int voteCount,
    required final bool selected,
    required final int sortOrder,
    @timestampKey final DateTime? createdAt,
    @timestampKey final DateTime? updatedAt,
  }) = _$FirestoreChoicesModelImpl;

  factory _FirestoreChoicesModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreChoicesModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get voteCount;
  @override
  bool get selected;
  @override
  int get sortOrder;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;

  /// Create a copy of FirestoreChoicesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChoicesModelImplCopyWith<_$FirestoreChoicesModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
