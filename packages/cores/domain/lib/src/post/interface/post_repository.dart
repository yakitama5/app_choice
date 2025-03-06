import 'package:cores_domain/core.dart';
import 'package:cores_domain/post.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

/// 投稿Repository
/// DIのためにRiverpodを使用している
@Riverpod(keepAlive: true)
PostRepository postRepository(Ref ref) => throw UnimplementedError();

/// 投稿Repository
abstract class PostRepository {
  /// ユーザーの一意投稿を取得する
  Future<Post> findMyPost({required String userId, required String postId});

  /// 自身の投稿一覧を検索する
  Future<PageInfo<Post>> searchMyPosts({
    int page = 1,
    int pageSize = postPageSize,
    required String userId,
  });

  /// トレンドの投稿一覧を検索する
  Future<PageInfo<Post>> searchTrendPosts({
    int page = 1,
    int pageSize = postPageSize,
  });

  /// 新着の投稿一覧を検索する
  Future<PageInfo<Post>> searchNewestPosts({
    int page = 1,
    int pageSize = postPageSize,
  });

  /// 投稿を作成する
  Future<Post> createPost({
    required String userId,
    required String title,
    required HowToDecide howToDecide,
    required List<String> choicesList,
  });
}
