import 'package:collection/collection.dart';
import 'package:cores_domain/core.dart';
import 'package:cores_domain/post.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_choices_model.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_post_model.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_vote_model.dart';
import 'package:infrastructure_firebase/src/post/state/firestore_my_choices_provider.dart';
import 'package:infrastructure_firebase/src/post/state/firestore_my_post_provider.dart';
import 'package:infrastructure_firebase/src/post/state/firestore_vote_provider.dart';
import 'package:riverpod/riverpod.dart';

class FirebasePostRepository implements PostRepository {
  const FirebasePostRepository(this.ref);

  final Ref ref;

  @override
  Future<Post> findMyPost({
    required String userId,
    required String postId,
  }) async {
    final postSnapshot =
        await ref
            .watch(myPostDocumentRefProvider(userId: userId, postId: postId))
            .get();
    final post = postSnapshot.data();
    if (post == null) {
      throw Exception('post not found');
    }

    final choicesList = await _searchMyChoices(userId: userId, postId: postId);

    // TODO(yakitama5): 投票の一覧も取得すること
    return post.toDomainModel(choicesList: choicesList);
  }

  @override
  Future<PageInfo<Post>> searchMyPosts({
    int page = 1,
    int pageSize = postPageSize,
    required String userId,
  }) async {
    final collectionRef = ref.watch(
      myPostCollectionRefProvider(userId: userId),
    );

    // 投票の一覧を取得する
    // TODO(yakitama5): 検索条件やOrderByはここで指定
    final postsQuery = collectionRef.orderBy('id');

    final pageFrom = (page - 1) * pageSize;
    final postsSnapshot =
        await postsQuery.startAt([pageFrom]).limit(postPageSize).get();

    final posts =
        postsSnapshot.docs.map((d) async {
          final postId = d.id;

          // 投稿に紐づく選択肢一覧を取得する
          final choicesList = await _searchMyChoices(
            userId: userId,
            postId: postId,
          );
          // 投稿に紐づく投票一覧を取得する
          final votesList = await _searchVotes(postId: postId);

          return d.data().toDomainModel(
            choicesList: choicesList,
            voteList: votesList,
          );
        }).toList();

    // 以降のデータが存在するかを確認するため、全件数を取得する
    final countSnapshot = await postsQuery.count().get();
    final totalCount = countSnapshot.count ?? 0;

    return PageInfo(items: posts, totalCount: totalCount);
  }

  @override
  Future<PageInfo<Post>> searchNewestPosts({
    int page = 1,
    int pageSize = postPageSize,
  }) {
    // TODO: implement selectNewestPosts
    throw UnimplementedError();
  }

  @override
  Future<PageInfo<Post>> searchTrendPosts({
    int page = 1,
    int pageSize = postPageSize,
  }) {
    // TODO: implement selectTrendPosts
    throw UnimplementedError();
  }

  @override
  Future<Post> createPost({
    required String userId,
    required String title,
    required HowToDecide howToDecide,
    required List<String> choicesList,
  }) async {
    // 投稿のドキュメントコレクション取得
    final postDocRef =
        ref.watch(myPostCollectionRefProvider(userId: userId)).doc();

    // トランザクション管理
    await ref.watch(firestoreProvider).runTransaction((transaction) async {
      final postParam = FirestorePostModel(
        id: postDocRef.id,
        title: title,
        howToDecide: howToDecide,
        author: userId,
      );
      transaction.set(postDocRef, postParam);

      // 選択肢の登録
      choicesList.forEachIndexed((index, choices) {
        final choicesDocRef =
            ref
                .watch(
                  myChoicesCollectionRefProvider(
                    userId: userId,
                    postId: postDocRef.id,
                  ),
                )
                .doc();
        final choicesParam = FirestoreChoicesModel(
          id: choicesDocRef.id,
          title: choices,
          sortOrder: index,
        );
        transaction.set(choicesDocRef, choicesParam);
      });
    });

    // 作成した投稿を取得する
    return findMyPost(userId: userId, postId: postDocRef.id);
  }

  /// 自身の投稿配下の選択肢を取得する
  Future<List<Choices>> _searchMyChoices({
    required String userId,
    required String postId,
  }) async {
    final snapshot =
        await ref
            .watch(
              myChoicesCollectionRefProvider(userId: userId, postId: postId),
            )
            .get();
    return snapshot.docs.map((d) => d.data().toDomainModel()).toList();
  }

  /// 投稿配下の投票を取得する
  Future<List<Vote>> _searchVotes({required String postId}) async {
    final snapshot =
        await ref.watch(voteCollectionRefProvider(postId: postId)).get();
    return snapshot.docs.map((d) => d.data().toDomainModel()).toList();
  }

  @override
  Future<Post> findPost({required String postId}) {
    // TODO: implement findPost
    throw UnimplementedError();
  }
}
