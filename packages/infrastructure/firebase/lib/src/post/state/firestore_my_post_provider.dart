import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_post_model.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_my_post_provider.g.dart';

/// コレクションの参照
@riverpod
CollectionReference<FirestorePostModel> myPostCollectionRef(
  Ref ref, {
  required String userId,
}) {
  return ref
      .watch(firestoreProvider)
      .myPostsRef(userId: userId)
      .withConverter(
        fromFirestore:
            (snapshot, options) =>
                FirestorePostModel.fromJson(snapshot.data()!),
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
DocumentReference<FirestorePostModel> myPostDocumentRef(
  Ref ref, {
  required String userId,
  String? postId,
}) => ref.watch(myPostCollectionRefProvider(userId: userId)).doc(postId);
