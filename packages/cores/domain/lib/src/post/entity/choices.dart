import 'package:freezed_annotation/freezed_annotation.dart';

part 'choices.freezed.dart';

/// 投稿内の選択肢Entity
@freezed
class Choices with _$Choices {
  const factory Choices({
    required String id,
    required String title,
    @Default(0) int voteCount,
    @Default(false) bool selected,
    required int sortOrder,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Choices;
}
