import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/post/components/choices_add_bottom_sheet.dart';
import 'package:flutter_app/src/post/components/post_warning_description.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mono_kit/widgets/widgets.dart';

class PostEditPage extends HookConsumerWidget {
  const PostEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final choices = useState<List<String>>([]);

    return SafeArea(
      child: UnfocusOnTap(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 8),
                child: FilledButton(
                  onPressed: () {
                    // TODO(yakitama5): 登録処理
                  },
                  child: Text(i18n.app.postEditPage.submit),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const PostWarningDescription(),
                const Gap(32),
                Flexible(
                  child: PostForm(
                    choices: choices.value,
                    onChoiceAdded: (v) => choices.value = [...choices.value, v],
                    onReorder: (oldIndex, newIndex) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostForm extends HookWidget {
  const PostForm({
    super.key,
    required this.choices,
    required this.onChoiceAdded,
    required this.onReorder,
  });

  final List<String> choices;
  final ValueChanged<String> onChoiceAdded;
  final void Function(int oldIndex, int newIndex) onReorder;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const PostTitleTextField(),
        const Gap(16),
        Expanded(
          child: ChoicesField(
            choices: choices,
            onChoiceAdded: onChoiceAdded,
            onReorder: onReorder,
          ),
        ),
      ],
    );
  }
}

class PostTitleTextField extends HookConsumerWidget {
  const PostTitleTextField({super.key});

  static const int _kMinLines = 3;
  static const int _kMaxLines = 5;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      minLines: _kMinLines,
      maxLines: _kMaxLines,
      decoration: InputDecoration(
        hintText: i18n.app.postEditPage.title.hintText,
        filled: true,
      ),
    );
  }
}

class ChoicesField extends HookConsumerWidget {
  const ChoicesField({
    super.key,
    required this.choices,
    required this.onChoiceAdded,
    required this.onReorder,
  });

  final List<String> choices;
  final ValueChanged<String> onChoiceAdded;
  final void Function(int oldIndex, int newIndex) onReorder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ChoicesFieldHeader(choices: choices, onChoiceAdded: onChoiceAdded),
        WidthFillBox(
          child: FilledCard(
            child: CustomReorderableListView.separated(
              // 画面から追加して、最大追加数も決まっているため、shinkWrapを許容する
              shrinkWrap: true,
              itemBuilder:
                  (context, index) =>
                      ChoicesItem(key: ValueKey(index), choice: choices[index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: choices.length,
              // XXX(yakitama5): 下記の不具合が解消されない限りエラーが出続ける
              // https://github.com/flutter/flutter/issues/136331
              onReorder: onReorder,
            ),
          ),
        ),
      ],
    );
  }
}

class ChoicesFieldHeader extends HookConsumerWidget {
  const ChoicesFieldHeader({
    super.key,
    required this.choices,
    required this.onChoiceAdded,
  });

  final List<String> choices;
  final ValueChanged<String> onChoiceAdded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          i18n.app.postEditPage.choices,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        IconButton.filled(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              builder:
                  (context) =>
                      ChoicesAddBottomSheet(onChoiceAdded: onChoiceAdded),
            );
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}

class ChoicesItem extends StatelessWidget {
  const ChoicesItem({super.key, required this.choice});

  static const double _kMinHeight = 32;

  final String choice;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(children: [Text(choice)]),
      minTileHeight: _kMinHeight,
    );
  }
}
