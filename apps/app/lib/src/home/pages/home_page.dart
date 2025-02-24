import 'package:flutter/material.dart';
import 'package:flutter_app/src/home/components/home_bottom_app_bar.dart';
import 'package:flutter_app/src/router/routes/base_shell_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const Center(child: Text('Hello Home!')),
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
    );
  }
}
