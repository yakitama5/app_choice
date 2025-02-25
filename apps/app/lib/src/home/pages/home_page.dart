import 'package:cores_designsystem/widgets.dart';
import 'package:cores_domain/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/components/home_bottom_app_bar.dart';
import 'package:flutter_app/src/home/components/shimmer_card.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const CustomScrollView(
          slivers: [
            SliverAppBar(
              title: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.person), child: Text('わたしの投稿')),
                  Tab(icon: Icon(Icons.trending_up), child: Text('トレンド')),
                  Tab(icon: Icon(Icons.access_time_filled), child: Text('最新')),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  MyPostTabView(),
                  Center(child: Text('トレンド')),
                  Center(child: Text('最新')),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        bottomNavigationBar: HomeBottomAppBar(
          onSettingsPressed: () => const SettingPageRoute().go(context),
          onSearchPressed: () {},
          onNotificationsPressed: () {},
        ),
      ),
    );
  }
}

class MyPostTabView extends HookConsumerWidget {
  const MyPostTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final firstPage = ref.watch(myPostsProvider(page: 1)).valueOrNull;

    // 空の場合は0件表示
    // NULLの場合はローディング表示のため対象外
    if (firstPage?.items.isEmpty ?? false) {
      // return const Center(child: Text('Empty data'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(myPostsProvider);
      },
      child: ListView.builder(
        itemCount: firstPage?.totalCount ?? postPageSize,
        itemBuilder: (context, index) {
          final page = index ~/ postPageSize + 1;
          final indexInPage = index % postPageSize;
          final response = ref.watch(myPostsProvider(page: page));

          return response.when(
            data: (data) => const Card.filled(),
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
