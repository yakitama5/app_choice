import 'package:collection/collection.dart';
import 'package:cores_domain/core.dart';
import 'package:cores_domain/post.dart';
import 'package:infrastructure_firebase/post.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/post/model/firestore_vote_model.dart';
import 'package:infrastructure_firebase/src/post/state/firestore_vote_provider.dart';
import 'package:riverpod/riverpod.dart';

class FirebasePostRepository implements PostRepository {
  const FirebasePostRepository(this.ref);

  final Ref ref;

  @override
  Future<Post?> findPost({required String postId}) async {
    final postSnapshot =
        await ref.watch(postDocumentRefProvider(postId: postId)).get();
    if (!postSnapshot.exists) {
      return null;
    }

    // 選択肢と投票の一覧を取得する
    final choicesList = await _searchChoices(postId: postId);
    final voteList = await _searchVotes(postId: postId);

    return postSnapshot.data()!.toDomainModel(
      choicesList: choicesList,
      voteList: voteList,
    );
  }

  @override
  Future<Post?> findMyPost({
    required String userId,
    required String postId,
  }) async {
    final postSnapshot =
        await ref
            .watch(myPostDocumentRefProvider(userId: userId, postId: postId))
            .get();
    if (!postSnapshot.exists) {
      return null;
    }

    // 公開情報の場合、公開中の情報が最新のため、そちらを取得する
    final publicPost = await findPost(postId: postId);
    if (publicPost != null) {
      return publicPost;
    }

    // 非公開情報の場合、自身の投稿から選択肢情報を取得する
    final choicesList = await _searchMyChoices(userId: userId, postId: postId);

    return postSnapshot.data()!.toDomainModel(choicesList: choicesList);
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

    final postsFuture =
        postsSnapshot.docs.map((d) async {
          final postId = d.id;

          // 公開情報の場合、公開中の情報が最新のため、そちらを取得する
          final publicPost = await findPost(postId: postId);
          if (publicPost != null) {
            return publicPost;
          }

          // 非公開情報の場合、自身の投稿から選択肢情報を取得する
          final choicesList = await _searchMyChoices(
            userId: userId,
            postId: postId,
          );
          final votesList = await _searchVotes(postId: postId);

          return d.data().toDomainModel(
            choicesList: choicesList,
            voteList: votesList,
          );
        }).toList();
    final posts = await Future.wait(postsFuture);

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
    final postId = postDocRef.id;

    // トランザクション管理
    await ref.watch(firestoreProvider).runTransaction((transaction) async {
      final postParam = FirestorePostModel(
        id: postId,
        title: title,
        howToDecide: howToDecide,
        author: userId,
      );
      transaction.set(postDocRef, postParam);

      // 選択肢の登録
      final choicesParamList = choicesList.mapIndexed((index, choices) {
        final choicesDocRef =
            ref
                .watch(
                  myChoicesCollectionRefProvider(
                    userId: userId,
                    postId: postId,
                  ),
                )
                .doc();
        final choicesParam = FirestoreChoicesModel(
          id: choicesDocRef.id,
          title: choices,
          sortOrder: index,
        );
        transaction.set(choicesDocRef, choicesParam);

        return choicesParam;
      });

      // 公開情報の場合、公開コレクションにも登録する
      if (howToDecide == HowToDecide.audience) {
        final publicPostDocRef = ref.watch(
          postDocumentRefProvider(postId: postId),
        );
        transaction.set(publicPostDocRef, postParam);

        // 選択肢の登録
        choicesParamList.forEachIndexed((index, param) {
          final docRef = ref.watch(
            choicesDocumentRefProvider(postId: postId, choicesId: param.id),
          );
          transaction.set(docRef, param);
        });
      }
    });

    // 作成した投稿を取得する
    final createdPost = await findMyPost(userId: userId, postId: postDocRef.id);
    return createdPost!;
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

  /// 投稿配下の選択肢を取得する
  Future<List<Choices>> _searchChoices({required String postId}) async {
    final snapshot =
        await ref.watch(choicesCollectionRefProvider(postId: postId)).get();
    return snapshot.docs.map((d) => d.data().toDomainModel()).toList();
  }

  /// 投稿配下の投票を取得する
  Future<List<Vote>> _searchVotes({required String postId}) async {
    final snapshot =
        await ref.watch(voteCollectionRefProvider(postId: postId)).get();
    return snapshot.docs.map((d) => d.data().toDomainModel()).toList();
  }
}
