import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:mono_kit/widgets/itemized_text.dart';

class PostWarningDescription extends StatelessWidget {
  const PostWarningDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledCard(
      child: Column(
        children: [
          Text(i18n.app.postEditPage.sensitiveWarnMessage.message),
          ItemizedText(
            i18n.app.postEditPage.sensitiveWarnMessage.clauseItems
                .map(Text.new)
                .toList(),
          ),
        ],
      ),
    );
  }
}
