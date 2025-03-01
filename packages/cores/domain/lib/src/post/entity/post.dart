import 'package:cores_domain/src/post/entity/choices.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

/// 投稿Entity
@freezed
class Post with _$Post {
  const factory Post({
    required String id,
    required String title,
    required List<Choices> choicesList,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Post;
}
