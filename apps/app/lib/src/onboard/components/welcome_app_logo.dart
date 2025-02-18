import 'package:cores_designsystem/common_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';

class WelcomeAppLogo extends StatelessWidget {
  const WelcomeAppLogo({
    super.key,
    required this.animationState,
    this.size = 240,
  });

  static const animationDuration = Duration(milliseconds: 500);

  final OnboardAnimationState animationState;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      // 初期状態以降は常に表示
      opacity: switch (animationState) {
        OnboardAnimationState.initial => 0,
        _ => 1,
      },
      duration: animationDuration,
      child: CommonAssets.images.logoSvg.svg(
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.onSurface,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
