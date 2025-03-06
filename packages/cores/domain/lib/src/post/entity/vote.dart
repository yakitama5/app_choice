import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote.freezed.dart';

/// 投稿内の選択肢Entity
@freezed
class Vote with _$Vote {
  const factory Vote({
    required String id,
    required String choicesId,
    required String author,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Vote;
}
