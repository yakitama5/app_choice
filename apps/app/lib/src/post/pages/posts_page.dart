import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/post/components/app_bottom_app_bar.dart';
import 'package:flutter_app/src/post/components/my_post_tab_view.dart';
import 'package:flutter_app/src/router/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = [
      Tab(
        icon: const Icon(Icons.person),
        child: Text(i18n.app.postsPage.tabs.myPosts),
      ),
      Tab(
        icon: const Icon(Icons.trending_up),
        child: Text(i18n.app.postsPage.tabs.trends),
      ),
      Tab(
        icon: const Icon(Icons.access_time_filled),
        child: Text(i18n.app.postsPage.tabs.newPost),
      ),
    ];

    const tabBarViews = [
      MyPostTabView(),
      Center(child: Text('トレンド')),
      Center(child: Text('最新')),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(title: TabBar(tabs: tabs)),
            const SliverFillRemaining(child: TabBarView(children: tabBarViews)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => const PostCreatePageRoute().go(context),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        bottomNavigationBar: AppBottomAppBar(
          onSettingsPressed: () => const SettingPageRoute().go(context),
          onSearchPressed: () {},
          onNotificationsPressed: () {},
        ),
      ),
    );
  }
}
