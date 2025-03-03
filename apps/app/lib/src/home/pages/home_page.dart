import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/home/components/home_bottom_app_bar.dart';
import 'package:flutter_app/src/home/components/my_post_tab_view.dart';
import 'package:flutter_app/src/router/routes/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = [
      Tab(
        icon: const Icon(Icons.person),
        child: Text(i18n.app.homePage.tabs.myPosts),
      ),
      Tab(
        icon: const Icon(Icons.trending_up),
        child: Text(i18n.app.homePage.tabs.trends),
      ),
      Tab(
        icon: const Icon(Icons.access_time_filled),
        child: Text(i18n.app.homePage.tabs.newPost),
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
        bottomNavigationBar: HomeBottomAppBar(
          onSettingsPressed: () => const SettingPageRoute().go(context),
          onSearchPressed: () {},
          onNotificationsPressed: () {},
        ),
      ),
    );
  }
}
