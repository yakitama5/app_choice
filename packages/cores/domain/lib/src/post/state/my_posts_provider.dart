import 'package:cores_domain/core.dart';
import 'package:cores_domain/post.dart';
import 'package:cores_domain/src/user/state/auth_user_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_posts_provider.g.dart';

@riverpod
Future<PageInfo<Post>> myPosts(Ref ref, {required int page}) async {
  final userId = await ref.watch(
    authUserProvider.selectAsync((user) => user?.id),
  );

  // ログアウト時などを考慮して、未認証の場合は空の情報を返却する
  if (userId == null) {
    return PageInfo.empty();
  }

  final repository = ref.watch(postRepositoryProvider);
  return repository.selectMyPosts(userId: userId, page: page);
}
