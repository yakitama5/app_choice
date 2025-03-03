import 'package:cores_designsystem/widgets.dart';
import 'package:cores_domain/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_app/src/post/model/choices_form_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

/// 選択肢を追加するBottomSheet
class ChoicesAddBottomSheet extends HookWidget {
  const ChoicesAddBottomSheet({super.key, required this.onChoiceAdded});

  final ValueChanged<String> onChoiceAdded;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () => logger.d('onClosing'),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Padding(
            // キーボード表示時にBottomSheetが隠れないようにする
            padding: EdgeInsetsDirectional.only(
              bottom: MediaQuery.viewInsetsOf(context).bottom,
            ),
            child: _Form(onChoiceAdded: onChoiceAdded),
          ),
        );
      },
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({required this.onChoiceAdded});

  final ValueChanged<String> onChoiceAdded;

  @override
  Widget build(BuildContext context) {
    return ChoicesFormModelFormBuilder(
      model: const ChoicesFormModel(),
      builder:
          (context, _, _) => PopScopeDirtyConfirm(
            dirty: ReactiveChoicesFormModelForm.of(context)?.form.dirty,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ReactiveTextField<String>(
                  formControlName: ChoicesFormModelForm.choicesControlName,
                  autofocus: true,
                  onSubmitted: (control) => submit(context, control),
                ),
                const Gap(8),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: ReactiveValueListenableBuilder<String>(
                    formControlName: ChoicesFormModelForm.choicesControlName,
                    builder: (_, control, _) {
                      final disabled = control.invalid;

                      return IgnorePointer(
                        ignoring: disabled,
                        child: FilledButton(
                          // バリデーションエラーの場合はボタンを非活性化する
                          onPressed:
                              disabled ? null : () => submit(context, control),
                          child: Text(
                            i18n.app.postEditPage.choicesAddBottomSheet.add,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }

  void submit(BuildContext context, AbstractControl<String> control) {
    if (control.valid) {
      onChoiceAdded(control.value!);
      context.pop();
    }
  }
}
