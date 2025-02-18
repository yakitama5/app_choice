import 'package:cores_designsystem/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/onboard/components/question_message.dart';
import 'package:flutter_app/src/onboard/components/welcome_app_logo.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class OnboardPage extends HookWidget {
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
                    child: WelcomeAppLogo(animationState: animationState.value),
                  ),
                ),
              ),
              QuestionMessage(
                animationState: animationState.value,
                onShowedMessage: () {
                  Future<void>.delayed(const Duration(milliseconds: 1000)).then(
                    (_) {
                      animationState.value = animationState.value.next();
                    },
                  );
                },
                onHidMessage: () {
                  Future<void>.delayed(const Duration(milliseconds: 1000)).then(
                    (_) {
                      animationState.value = animationState.value.next();
                    },
                  );
                },
              ),
              Expanded(
                child: SelectedButtons(
                  onPressedYes: () {
                    animationState.value = OnboardAnimationState.selectedYes;
                  },
                  onPressedNo: () {
                    animationState.value = OnboardAnimationState.selectedNo;
                  },
                  animationState: animationState.value,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          animationState.value = OnboardAnimationState.initial;

          Future<void>.delayed(const Duration(milliseconds: 1000)).then((_) {
            animationState.value = animationState.value.next();
          });
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
        OnboardAnimationState.selectedNo => 0,
        _ => 1,
      },
      duration: duration,
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: onPressed,
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
        OnboardAnimationState.selectedYes => 0,
        _ => 1,
      },
      duration: duration,
      child: SizedBox(
        width: double.infinity,
        child: FilledButton.tonal(
          onPressed: onPressed,
          child: Text(commonI18n.common.no),
        ),
      ),
    );
  }
}
