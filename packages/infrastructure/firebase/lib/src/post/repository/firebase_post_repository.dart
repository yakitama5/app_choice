import 'package:collection/collection.dart';
import 'package:cores_domain/core.dart';
import 'package:cores_domain/post.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_choices_model.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_post_model.dart';
import 'package:infrastructure_firebase/src/post/state/firestore_my_choices_provider.dart';
import 'package:infrastructure_firebase/src/post/state/firestore_my_post_provider.dart';
import 'package:riverpod/riverpod.dart';

class FirebasePostRepository implements PostRepository {
  const FirebasePostRepository(this.ref);

  final Ref ref;

  @override
  Future<PageInfo<Post>> selectMyPosts({
    int page = 1,
    int pageSize = postPageSize,
    required String userId,
  }) async {
    final collectionRef = ref.watch(
      myPostCollectionRefProvider(userId: userId),
    );

    // TODO(yakitama5): 検索条件やOrderByはここで指定
    final postsQuery = collectionRef.orderBy('createdAt');

    final pageFrom = (page - 1) * pageSize;
    final postsSnapshot =
        await postsQuery
            .startAt([pageFrom])
            .limit(postPageSize)
            .snapshots()
            .first;
    final postIds = postsSnapshot.docs.map((d) => d.data().id);
    final choicesSnapshots = postIds.map((postId) async {
      final choicesSnapshot =
          await ref
              .watch(
                myChoicesCollectionRefProvider(userId: userId, postId: postId),
              )
              .snapshots()
              .first;

      // 後から集約させるため、投稿IDも各Entityと合わせて保持しておく
      return choicesSnapshot.docs.map(
        (d) => (postId: postId, data: d.data().toDomainModel()),
      );
    });

    final choicesDocs = await Future.wait(choicesSnapshots);
    final choicesMap = choicesDocs
        .expand((list) => list)
        .groupListsBy((c) => c.postId);

    final posts =
        postsSnapshot.docs.map((d) {
          final postId = d.id;
          final choicesList = choicesMap[postId]?.map((r) => r.data).toList();
          return d.data().toDomainModel(choicesList: choicesList ?? []);
        }).toList();

    // 以降のデータが存在するかを確認するため、全件数を取得する
    final countSnapshot = await postsQuery.count().get();
    final totalCount = countSnapshot.count ?? 0;

    return PageInfo(items: posts, totalCount: totalCount);
  }

  @override
  Future<PageInfo<Post>> selectNewestPosts({
    int page = 1,
    int pageSize = postPageSize,
  }) {
    // TODO: implement selectNewestPosts
    throw UnimplementedError();
  }

  @override
  Future<PageInfo<Post>> selectTrendPosts({
    int page = 1,
    int pageSize = postPageSize,
  }) {
    // TODO: implement selectTrendPosts
    throw UnimplementedError();
  }
}
