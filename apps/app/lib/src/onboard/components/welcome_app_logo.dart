import 'package:cores_designsystem/common_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';

class WelcomeAppLogo extends StatelessWidget {
  const WelcomeAppLogo({
    super.key,
    required this.animationState,
    this.size = 364,
  });

  final OnboardAnimationState animationState;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: switch (animationState) {
        OnboardAnimationState.initial => 0,
        OnboardAnimationState.showedWelcomeMessage => 1,
        OnboardAnimationState.showedChoices => 1,
        OnboardAnimationState.selectedYes => 1,
        OnboardAnimationState.selectedNo => 1,
      },
      duration: const Duration(milliseconds: 500),
      child: CommonAssets.images.logoSvg.svg(
        width: size,
        height: size,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
