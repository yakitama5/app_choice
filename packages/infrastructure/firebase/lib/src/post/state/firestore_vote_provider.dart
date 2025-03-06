import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_vote_model.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_vote_provider.g.dart';

/// コレクションの参照
@riverpod
CollectionReference<FirestoreVoteModel> voteCollectionRef(
  Ref ref, {
  required String postId,
}) {
  return ref
      .watch(firestoreProvider)
      .votesRef(postId: postId)
      .withConverter(
        fromFirestore:
            (snapshot, options) =>
                FirestoreVoteModel.fromJson(snapshot.data()!),
        toFirestore:
            (value, options) => {
              ...value.toJson(),

              // 日付項目は自動更新
              FirestoreColumns.updatedAt.fieldName:
                  FieldValue.serverTimestamp(),
              if (value.createdAt == null)
                FirestoreColumns.createdAt.fieldName:
                    FieldValue.serverTimestamp(),
            },
      );
}

/// ドキュメントの参照
@riverpod
DocumentReference<FirestoreVoteModel> voteDocumentRef(
  Ref ref, {
  required String postId,
  String? voteId,
}) => ref.watch(voteCollectionRefProvider(postId: postId)).doc(voteId);
