import 'package:cores_domain/post.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'post_form_model.gform.dart';

@Rf()
class PostFormModel {
  const PostFormModel({
    @RfControl(
      validators: [
        RequiredValidator(),
        MaxLengthValidator(PostConfig.titleMaxLength),
      ],
    )
    this.title = '',
    @RfArray(
      validators: [
        MaxLengthValidator(PostConfig.choicesListMaxLength),
        MinLengthValidator(PostConfig.choicesListMinLength),
      ],
      itemValidators: [MaxLengthValidator(PostConfig.choicesMaxLength)],
    )
    this.choicesList = const [],
  });

  final String title;
  final List<String> choicesList;
}
