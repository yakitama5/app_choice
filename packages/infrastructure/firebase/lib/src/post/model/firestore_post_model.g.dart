// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestorePostModelImpl _$$FirestorePostModelImplFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  r'_$FirestorePostModelImpl',
  json,
  ($checkedConvert) {
    final val = _$FirestorePostModelImpl(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      howToDecide: $checkedConvert(
        'how_to_decide',
        (v) => $enumDecode(_$HowToDecideEnumMap, v),
      ),
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
    'howToDecide': 'how_to_decide',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$$FirestorePostModelImplToJson(
  _$FirestorePostModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'how_to_decide': _$HowToDecideEnumMap[instance.howToDecide]!,
  'created_at': timestampFromDateValue(instance.createdAt),
  'updated_at': timestampFromDateValue(instance.updatedAt),
};

const _$HowToDecideEnumMap = {
  HowToDecide.audience: 'audience',
  HowToDecide.ai: 'ai',
  HowToDecide.roulette: 'roulette',
};
