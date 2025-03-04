import 'package:cores_designsystem/widgets.dart';
import 'package:cores_domain/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/components/post_card.dart';
import 'package:flutter_app/src/home/components/shimmer_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyPostTabView extends ConsumerWidget {
  const MyPostTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final firstPage = ref.watch(myPostsProvider(page: 1)).valueOrNull;

    // 空の場合は0件表示
    // NULLの場合はローディング表示のため対象外
    if (firstPage?.items.isEmpty ?? false) {
      return const Center(child: Text('Empty data'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(myPostsProvider);

        // ignore: unused_result
        await ref.refresh(myPostsProvider(page: 1).future);
      },
      child: ListView.builder(
        itemCount: firstPage?.totalCount ?? postPageSize,
        itemBuilder: (context, index) {
          final page = index ~/ postPageSize + 1;
          final indexInPage = index % postPageSize;
          final response = ref.watch(myPostsProvider(page: page));

          return response.when(
            data: (data) => PostCard(post: data.items[indexInPage]),
            loading: () => const ShimmerCard(),
            // TODO(yakitama5): エラー表示を分けて記載
            error:
                (error, __) => ErrorListTile(
                  indexInPage: indexInPage,
                  isLoading: response.isLoading,
                  error: error.toString(),
                  onRetry: () {
                    ref.invalidate(myPostsProvider(page: page));
                  },
                ),
          );
        },
      ),
    );
  }
}
