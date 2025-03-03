import 'package:cores_designsystem/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/post/components/choices_add_bottom_sheet.dart';
import 'package:flutter_app/src/post/components/choices_item.dart';
import 'package:flutter_app/src/post/components/post_warning_description.dart';
import 'package:flutter_app/src/post/model/post_form_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mono_kit/widgets/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PostEditPage extends HookConsumerWidget {
  const PostEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: PostFormModelFormBuilder(
        model: const PostFormModel(),
        builder:
            (context, _, _) => UnfocusOnTap(
              child: PopScopeDirtyConfirm(
                dirty: ReactivePostFormModelForm.of(context)?.form.dirty,
                child: Scaffold(
                  appBar: AppBar(
                    actions: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: 8),
                        child: ReactivePostFormModelFormConsumer(
                          builder: (_, formModel, _) {
                            final disabled = formModel.form.invalid;

                            return FilledButton(
                              // バリデーションNGの場合はボタンを非活性化
                              onPressed:
                                  disabled
                                      ? null
                                      : () {
                                        // TODO(yakitama5): 登録処理
                                      },
                              child: Text(i18n.app.postEditPage.submit),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  body: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        PostWarningDescription(),
                        Gap(32),
                        Flexible(child: _PostForm()),
                      ],
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}

class _PostForm extends HookWidget {
  const _PostForm();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _PostTitleTextField(),
        Gap(16),
        Expanded(child: _ChoicesField()),
      ],
    );
  }
}

class _PostTitleTextField extends HookConsumerWidget {
  const _PostTitleTextField();

  static const int _kMinLines = 3;
  static const int _kMaxLines = 5;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveTextField<String>(
      formControlName: PostFormModelForm.titleControlName,
      minLines: _kMinLines,
      maxLines: _kMaxLines,
      decoration: InputDecoration(
        hintText: i18n.app.postEditPage.title.hintText,
        filled: true,
      ),
    );
  }
}

class _ChoicesField extends HookConsumerWidget {
  const _ChoicesField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const _ChoicesFieldHeader(),
        WidthFillBox(
          child: FilledCard(
            child: ReactiveValueListenableBuilder(
              formControlName: PostFormModelForm.choicesListControlName,
              builder: (_, control, _) {
                final choices =
                    ((control.value ?? []) as List<String?>).nonNulls.toList();
                return CustomReorderableListView.separated(
                  // 画面から追加して、最大追加数も決まっているため、shinkWrapを許容する
                  shrinkWrap: true,
                  itemBuilder:
                      (context, index) => ChoicesItem(
                        key: ValueKey(index),
                        choice: choices[index],
                      ),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: choices.length,
                  // XXX(yakitama5): 下記の不具合が解消されない限りエラーが出続ける
                  // https://github.com/flutter/flutter/issues/136331
                  onReorder: (oldIndex, newIndex) {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final item = choices.removeAt(oldIndex);
                    choices.insert(newIndex, item);

                    // Formへの反映
                    control.updateValue(choices);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ChoicesFieldHeader extends StatelessWidget {
  const _ChoicesFieldHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          i18n.app.postEditPage.choices,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        IconButton.filled(
          onPressed:
              () => showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                builder:
                    (_) => ChoicesAddBottomSheet(
                      onChoiceAdded: (choice) {
                        final formModel =
                            ReactivePostFormModelForm.of(context)!;
                        final oldValue =
                            formModel.choicesListControl.value?.nonNulls
                                .toList() ??
                            [];
                        final newValue = [...oldValue, choice];
                        formModel.choicesListValueUpdate(newValue);
                      },
                    ),
              ),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
