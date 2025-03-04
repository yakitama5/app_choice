import 'package:flutter/material.dart';

class AppBottomAppBar extends StatelessWidget {
  const AppBottomAppBar({
    super.key,
    required this.onSettingsPressed,
    required this.onSearchPressed,
    required this.onNotificationsPressed,
  });

  static const double _iconSpacing = 8;

  final VoidCallback onSettingsPressed;
  final VoidCallback onSearchPressed;
  final VoidCallback onNotificationsPressed;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        spacing: _iconSpacing,
        children: [
          IconButton(
            onPressed: onSettingsPressed,
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: onSearchPressed,
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: onNotificationsPressed,
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
