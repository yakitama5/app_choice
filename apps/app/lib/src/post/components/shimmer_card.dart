import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';

/// ホーム画面のシムメーター
class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key});

  static const double _height = 160;

  @override
  Widget build(BuildContext context) {
    return const ShimmerWidget.rectangular(height: _height);
  }
}
