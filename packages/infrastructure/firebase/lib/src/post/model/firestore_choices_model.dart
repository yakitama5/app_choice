import 'package:cores_domain/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';

part 'firestore_choices_model.freezed.dart';
part 'firestore_choices_model.g.dart';

/// `/user/posts/{postId}/choices` or `posts/{postId}/choices`ドキュメントのモデル
@freezed
class FirestoreChoicesModel with _$FirestoreChoicesModel {
  const factory FirestoreChoicesModel({
    required String id,
    required String title,
    @Default(0) int voteCount,
    @Default(false) bool selected,
    required int sortOrder,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreChoicesModel;

  factory FirestoreChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreChoicesModelFromJson(json);
}

extension FirestoreChoicesModelX on FirestoreChoicesModel {
  /// ドメイン層への変換
  Choices toDomainModel() => Choices(
    id: id,
    title: title,
    voteCount: voteCount,
    selected: selected,
    sortOrder: sortOrder,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
