import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WelcomeMainText extends StatelessWidget {
  const WelcomeMainText(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      label,
      style: Theme.of(context).textTheme.displaySmall,
      maxLines: 1,
    );
  }
}
