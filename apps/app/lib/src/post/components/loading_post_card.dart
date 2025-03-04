import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';

/// 読込中の投稿カード
class LoadingPostCard extends StatelessWidget {
  const LoadingPostCard({super.key});

  static const double _height = 160;

  @override
  Widget build(BuildContext context) {
    return const ShimmerWidget.rectangular(height: _height);
  }
}
