// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestorePostModelImpl _$$FirestorePostModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FirestorePostModelImpl',
      json,
      ($checkedConvert) {
        final val = _$FirestorePostModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => dateFromTimestampValue(v)),
          updatedAt:
              $checkedConvert('updated_at', (v) => dateFromTimestampValue(v)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$$FirestorePostModelImplToJson(
        _$FirestorePostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'created_at': timestampFromDateValue(instance.createdAt),
      'updated_at': timestampFromDateValue(instance.updatedAt),
    };
