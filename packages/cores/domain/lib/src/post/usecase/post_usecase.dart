import 'package:cores_domain/core.dart';
import 'package:cores_domain/post.dart';
import 'package:cores_domain/src/user/state/auth_user_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_usecase.g.dart';

@riverpod
PostUsecase postUsecase(Ref ref) => PostUsecase(ref);

class PostUsecase with RunUsecaseMixin {
  PostUsecase(this.ref);

  final Ref ref;

  PostRepository get _repository => ref.watch(postRepositoryProvider);

  /// 投稿の作成
  Future<void> createPost({
    required String title,
    required HowToDecide howToDecide,
    required List<String> choicesList,
  }) async {
    final userId = await ref.watch(
      authUserProvider.selectAsync((user) => user?.id),
    );

    await execute(
      ref,
      action:
          () => _repository.createPost(
            userId: userId!,
            title: title,
            howToDecide: howToDecide,
            choicesList: choicesList,
          ),
    );
    // TODO(yakitama5): Repositoryクラスを整備した後に作る
  }
}
