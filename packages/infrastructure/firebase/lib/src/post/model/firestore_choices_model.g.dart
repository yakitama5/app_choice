// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_choices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreChoicesModelImpl _$$FirestoreChoicesModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FirestoreChoicesModelImpl',
      json,
      ($checkedConvert) {
        final val = _$FirestoreChoicesModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          voteCount: $checkedConvert('vote_count', (v) => (v as num).toInt()),
          selected: $checkedConvert('selected', (v) => v as bool),
          sortOrder: $checkedConvert('sort_order', (v) => (v as num).toInt()),
          createdAt:
              $checkedConvert('created_at', (v) => dateFromTimestampValue(v)),
          updatedAt:
              $checkedConvert('updated_at', (v) => dateFromTimestampValue(v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'voteCount': 'vote_count',
        'sortOrder': 'sort_order',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$$FirestoreChoicesModelImplToJson(
        _$FirestoreChoicesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'vote_count': instance.voteCount,
      'selected': instance.selected,
      'sort_order': instance.sortOrder,
      'created_at': timestampFromDateValue(instance.createdAt),
      'updated_at': timestampFromDateValue(instance.updatedAt),
    };
