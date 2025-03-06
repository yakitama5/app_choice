// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_vote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreVoteModelImpl _$$FirestoreVoteModelImplFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  r'_$FirestoreVoteModelImpl',
  json,
  ($checkedConvert) {
    final val = _$FirestoreVoteModelImpl(
      id: $checkedConvert('id', (v) => v as String),
      author: $checkedConvert('author', (v) => v as String),
      choicesId: $checkedConvert('choices_id', (v) => v as String),
      createdAt: $checkedConvert(
        'created_at',
        (v) => dateFromTimestampValue(v),
      ),
      updatedAt: $checkedConvert(
        'updated_at',
        (v) => dateFromTimestampValue(v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'choicesId': 'choices_id',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$$FirestoreVoteModelImplToJson(
  _$FirestoreVoteModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'author': instance.author,
  'choices_id': instance.choicesId,
  'created_at': timestampFromDateValue(instance.createdAt),
  'updated_at': timestampFromDateValue(instance.updatedAt),
};
