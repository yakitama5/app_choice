import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    required this.onShowedMessage,
    required this.animationState,
  });

  final VoidCallback onShowedMessage;
  final OnboardAnimationState animationState;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      onEnd: onShowedMessage,
      opacity: switch (animationState) {
        OnboardAnimationState.initial => 0,
        OnboardAnimationState.showedWelcomeMessage => 1,
        OnboardAnimationState.showedChoices => 1,
        OnboardAnimationState.selectedYes => 1,
        OnboardAnimationState.selectedNo => 1,
      },
      duration: const Duration(milliseconds: 500),
      child: AutoSizeText(
        i18n.app.onboardPage.firstQuestion,
        style: Theme.of(context).textTheme.displayMedium,
        maxLines: 1,
      ),
    );
  }
}
