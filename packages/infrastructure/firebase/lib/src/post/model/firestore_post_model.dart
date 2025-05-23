import 'package:cores_domain/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';

part 'firestore_post_model.freezed.dart';
part 'firestore_post_model.g.dart';

/// `/user/posts` or `/posts`ドキュメントのモデル
@freezed
class FirestorePostModel with _$FirestorePostModel {
  const factory FirestorePostModel({
    required String id,
    required String title,
    required HowToDecide howToDecide,
    @Default(0) int viewCount,
    @Default(0) int voteCount,
    required String author,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestorePostModel;

  factory FirestorePostModel.fromJson(Map<String, dynamic> json) =>
      _$FirestorePostModelFromJson(json);
}

extension FirestorePostModelX on FirestorePostModel {
  /// ドメイン層への変換
  Post toDomainModel({
    required List<Choices> choicesList,
    List<Vote>? voteList,
  }) => Post(
    id: id,
    title: title,
    howToDecide: howToDecide,
    viewCount: viewCount,
    voteCount: voteCount,
    choicesList: choicesList,
    author: author,
    voteList: voteList,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
