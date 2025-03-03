import 'package:cores_domain/post.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'choices_form_model.gform.dart';

@Rf()
class ChoicesFormModel {
  const ChoicesFormModel({
    @RfControl(
      validators: [
        RequiredValidator(),
        MaxLengthValidator(PostConfig.choicesMaxLength),
      ],
    )
    this.choices = '',
  });

  final String choices;
}
