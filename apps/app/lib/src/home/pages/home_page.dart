import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/components/home_bottom_app_bar.dart';
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
                  Tab(icon: Icon(Icons.timer), child: Text('最新')),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Center(child: Text('わたしの投稿')),
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
