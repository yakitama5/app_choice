import 'package:cores_designsystem/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/onboard/components/welcome_app_logo.dart';
import 'package:flutter_app/src/onboard/components/welcome_message.dart';
import 'package:flutter_app/src/onboard/enum/onboard_animation_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardPage extends HookWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final animationState = useState(OnboardAnimationState.initial);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 320),
                child: Center(
                  child: WelcomeAppLogo(animationState: animationState.value),
                ),
              ),
              Center(
                child: WelcomeMessage(
                  onShowedMessage: () {
                    if (animationState.value ==
                        OnboardAnimationState.showedWelcomeMessage) {
                      Future<void>.delayed(
                        const Duration(milliseconds: 1000),
                      ).then((_) {
                        animationState.value = animationState.value.next();
                      });
                    }
                  },
                  animationState: animationState.value,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 64),
                  child: SelectedButtonList(
                    onPressedYes:
                        () =>
                            animationState.value =
                                OnboardAnimationState.selectedYes,
                    onPressedNo:
                        () =>
                            animationState.value =
                                OnboardAnimationState.selectedNo,
                    animationState: animationState.value,
                  ),
                ),
              ),
            ],
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
      ),
    );
  }
}

class SelectedButtonList extends StatelessWidget {
  const SelectedButtonList({
    super.key,
    required this.onPressedYes,
    required this.onPressedNo,
    required this.animationState,
  });

  final VoidCallback onPressedYes;
  final VoidCallback onPressedNo;
  final OnboardAnimationState animationState;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      curve: Curves.easeInQuint,
      opacity: switch (animationState) {
        OnboardAnimationState.initial ||
        OnboardAnimationState.showedWelcomeMessage => 0,
        _ => 1,
      },
      duration: const Duration(milliseconds: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedOpacity(
            opacity: switch (animationState) {
              OnboardAnimationState.initial ||
              OnboardAnimationState.showedWelcomeMessage ||
              OnboardAnimationState.selectedNo => 0,
              _ => 1,
            },
            duration: const Duration(milliseconds: 500),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: onPressedYes,
                child: Text(commonI18n.common.yes),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: switch (animationState) {
              OnboardAnimationState.initial ||
              OnboardAnimationState.showedWelcomeMessage ||
              OnboardAnimationState.selectedYes => 0,
              _ => 1,
            },
            duration: const Duration(milliseconds: 500),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton.tonal(
                onPressed: onPressedYes,
                child: Text(commonI18n.common.no),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
