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
      viewCount: $checkedConvert(
        'view_count',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      voteCount: $checkedConvert(
        'vote_count',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      author: $checkedConvert('author', (v) => v as String),
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
    'viewCount': 'view_count',
    'voteCount': 'vote_count',
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
  'view_count': instance.viewCount,
  'vote_count': instance.voteCount,
  'author': instance.author,
  'created_at': timestampFromDateValue(instance.createdAt),
  'updated_at': timestampFromDateValue(instance.updatedAt),
};

const _$HowToDecideEnumMap = {
  HowToDecide.audience: 'audience',
  HowToDecide.ai: 'ai',
  HowToDecide.roulette: 'roulette',
};
