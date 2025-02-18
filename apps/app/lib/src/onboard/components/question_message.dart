import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';

class QuestionMessage extends StatelessWidget {
  const QuestionMessage({
    super.key,
    required this.animationState,
    this.onShowedMessage,
    this.onHidMessage,
  });

  static const animationDuration = Duration(milliseconds: 500);

  final OnboardAnimationState animationState;
  final VoidCallback? onShowedMessage;
  final VoidCallback? onHidMessage;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      onEnd: () {
        switch (animationState) {
          case OnboardAnimationState.showedQuestion:
            onShowedMessage?.call();
            return;
          case OnboardAnimationState.selectedYes:
          case OnboardAnimationState.selectedNo:
            onHidMessage?.call();
            return;
          case OnboardAnimationState.initial:
          case OnboardAnimationState.showedChoices:
          case OnboardAnimationState.showedWelcomeMessage:
          case OnboardAnimationState.showedSeeYouMessage:
          // do nothing
        }
      },
      opacity: switch (animationState) {
        OnboardAnimationState.initial ||
        OnboardAnimationState.selectedYes ||
        OnboardAnimationState.selectedNo ||
        OnboardAnimationState.showedWelcomeMessage ||
        OnboardAnimationState.showedSeeYouMessage => 0,
        _ => 1,
      },
      duration: animationDuration,
      child: AutoSizeText(
        i18n.app.onboardPage.firstQuestion,
        style: Theme.of(context).textTheme.displayMedium,
        maxLines: 1,
      ),
    );
  }
}
