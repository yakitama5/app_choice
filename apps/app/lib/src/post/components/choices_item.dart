import 'package:flutter/material.dart';

class ChoicesItem extends StatelessWidget {
  const ChoicesItem({super.key, required this.choice});

  static const double _kMinHeight = 32;

  final String choice;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(children: [Text(choice)]),
      minTileHeight: _kMinHeight,
    );
  }
}
