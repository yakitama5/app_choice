import 'package:cores_domain/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';

part 'firestore_vote_model.freezed.dart';
part 'firestore_vote_model.g.dart';

/// `posts/{postId}/votes`ドキュメントのモデル
@freezed
class FirestoreVoteModel with _$FirestoreVoteModel {
  const factory FirestoreVoteModel({
    required String id,
    required String author,
    required String choicesId,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreVoteModel;

  factory FirestoreVoteModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreVoteModelFromJson(json);
}

extension FirestoreVoteModelX on FirestoreVoteModel {
  /// ドメイン層への変換
  Vote toDomainModel() => Vote(
    id: id,
    author: author,
    choicesId: choicesId,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
