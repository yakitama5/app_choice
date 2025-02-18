enum OnboardAnimationState {
  initial,
  showedQuestion,
  showedChoices,
  selectedYes,
  showedWelcomeMessage,
  selectedNo,
  showedSeeYouMessage,
}

extension OnboardAnimationStateX on OnboardAnimationState {
  OnboardAnimationState next() {
    switch (this) {
      case OnboardAnimationState.initial:
        return OnboardAnimationState.showedQuestion;
      case OnboardAnimationState.showedQuestion:
        return OnboardAnimationState.showedChoices;
      case OnboardAnimationState.selectedYes:
        return OnboardAnimationState.showedWelcomeMessage;
      case OnboardAnimationState.selectedNo:
        return OnboardAnimationState.showedSeeYouMessage;
      case OnboardAnimationState.showedChoices:
      case OnboardAnimationState.showedWelcomeMessage:
      case OnboardAnimationState.showedSeeYouMessage:
        return this;
    }
  }
}
