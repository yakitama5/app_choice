import 'package:cores_domain/core.dart';
import 'package:cores_domain/src/post/entity/post.dart';
import 'package:cores_domain/src/post/interface/post_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_posts_provider.g.dart';

@riverpod
Future<PageInfo<Post>> myPosts(Ref ref) {
  final repository = ref.watch(postRepositoryProvider);
  return repository.selectMyPosts();
}
