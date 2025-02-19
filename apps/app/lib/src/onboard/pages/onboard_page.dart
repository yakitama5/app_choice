import 'package:cores_designsystem/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/onboard/components/onboard_app_logo.dart';
import 'package:flutter_app/src/onboard/components/question_message.dart';
import 'package:flutter_app/src/onboard/components/welcome_main_text.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';
import 'package:flutter_app/src/onboard/mixin/delayed_mixin.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class OnboardPage extends HookWidget with DelayedMixin {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final animationState = useState(OnboardAnimationState.initial);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(12),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 32),
                    child: OnboardAppLogo(animationState: animationState.value),
                  ),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 1000),
                child: switch (animationState.value) {
                  OnboardAnimationState.showedWelcomeMessage => WelcomeMainText(
                    i18n.app.onboardPage.welcome,
                  ),
                  OnboardAnimationState.showedSeeYouMessage => WelcomeMainText(
                    i18n.app.onboardPage.seeYou,
                  ),
                  _ => QuestionMessage(
                    animationState: animationState.value,
                    onShowedMessage:
                        () => delayed(
                          () =>
                              animationState.value =
                                  animationState.value.next(),
                        ),
                    onHidMessage:
                        () => delayed(
                          () =>
                              animationState.value =
                                  animationState.value.next(),
                          duration: const Duration(milliseconds: 500),
                        ),
                  ),
                },
              ),
              Expanded(
                child: Column(
                  children: [
                    const Gap(8),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 1000),
                      opacity: switch (animationState.value) {
                        OnboardAnimationState.showedSeeYouMessage => 1,
                        _ => 0,
                      },
                      child: Text(i18n.app.onboardPage.restartCaption),
                    ),
                    Expanded(
                      child: SelectedButtons(
                        onPressedYes: () {
                          animationState.value =
                              OnboardAnimationState.selectedYes;
                        },
                        onPressedNo: () {
                          animationState.value =
                              OnboardAnimationState.selectedNo;
                        },
                        animationState: animationState.value,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationState.value = OnboardAnimationState.initial;
          delayed(() => animationState.value = animationState.value.next());
        },
        child: const Icon(Icons.replay),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}

class SelectedButtons extends StatelessWidget {
  const SelectedButtons({
    super.key,
    required this.onPressedYes,
    required this.onPressedNo,
    required this.animationState,
  });

  static const animationDuration = Duration(milliseconds: 500);

  final VoidCallback onPressedYes;
  final VoidCallback onPressedNo;
  final OnboardAnimationState animationState;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      curve: Curves.easeInQuint,
      opacity: switch (animationState) {
        OnboardAnimationState.initial ||
        OnboardAnimationState.showedQuestion => 0,
        _ => 1,
      },
      duration: animationDuration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          YesButton(
            onPressed: onPressedYes,
            animationState: animationState,
            duration: animationDuration,
          ),
          const Gap(12),
          NoButton(
            onPressed: onPressedNo,
            animationState: animationState,
            duration: animationDuration,
          ),
          const Gap(32),
        ],
      ),
    );
  }
}

class YesButton extends StatelessWidget {
  const YesButton({
    super.key,
    required this.onPressed,
    required this.animationState,
    required this.duration,
  });

  final VoidCallback onPressed;
  final OnboardAnimationState animationState;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: switch (animationState) {
        OnboardAnimationState.initial ||
        OnboardAnimationState.showedQuestion ||
        OnboardAnimationState.selectedNo ||
        OnboardAnimationState.showedSeeYouMessage => 0,
        _ => 1,
      },
      duration: duration,
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: () {
            // 一度選択したら、選択できないようにする
            switch (animationState) {
              case OnboardAnimationState.showedChoices:
                onPressed();
                return;

              case OnboardAnimationState.initial:
              case OnboardAnimationState.showedQuestion:
              case OnboardAnimationState.selectedYes:
              case OnboardAnimationState.showedWelcomeMessage:
              case OnboardAnimationState.selectedNo:
              case OnboardAnimationState.showedSeeYouMessage:
              // do nothing
            }
          },
          child: Text(commonI18n.common.yes),
        ),
      ),
    );
  }
}

class NoButton extends StatelessWidget {
  const NoButton({
    super.key,
    required this.onPressed,
    required this.animationState,
    required this.duration,
  });

  final VoidCallback onPressed;
  final OnboardAnimationState animationState;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: switch (animationState) {
        OnboardAnimationState.initial ||
        OnboardAnimationState.showedQuestion ||
        OnboardAnimationState.selectedYes ||
        OnboardAnimationState.showedWelcomeMessage => 0,
        _ => 1,
      },
      duration: duration,
      child: SizedBox(
        width: double.infinity,
        child: FilledButton.tonal(
          onPressed: () {
            // 一度選択したら、選択できないようにする
            switch (animationState) {
              case OnboardAnimationState.showedChoices:
                onPressed();
                return;

              case OnboardAnimationState.initial:
              case OnboardAnimationState.showedQuestion:
              case OnboardAnimationState.selectedYes:
              case OnboardAnimationState.showedWelcomeMessage:
              case OnboardAnimationState.selectedNo:
              case OnboardAnimationState.showedSeeYouMessage:
              // do nothing
            }
          },
          child: Text(commonI18n.common.no),
        ),
      ),
    );
  }
}
