// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choices_form_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveChoicesFormModelFormConsumer extends StatelessWidget {
  const ReactiveChoicesFormModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, ChoicesFormModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChoicesFormModelForm.of(context);

    if (formModel is! ChoicesFormModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ChoicesFormModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ChoicesFormModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ChoicesFormModelForm form;
}

class ReactiveChoicesFormModelForm extends StatelessWidget {
  const ReactiveChoicesFormModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ChoicesFormModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ChoicesFormModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ChoicesFormModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ChoicesFormModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ChoicesFormModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ChoicesFormModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveChoicesFormModelFormExt on BuildContext {
  ChoicesFormModelForm? choicesFormModelFormWatch() =>
      ReactiveChoicesFormModelForm.of(this);

  ChoicesFormModelForm? choicesFormModelFormRead() =>
      ReactiveChoicesFormModelForm.of(this, listen: false);
}

class ChoicesFormModelFormBuilder extends StatefulWidget {
  const ChoicesFormModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ChoicesFormModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, ChoicesFormModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, ChoicesFormModelForm formModel)?
      initState;

  @override
  _ChoicesFormModelFormBuilderState createState() =>
      _ChoicesFormModelFormBuilderState();
}

class _ChoicesFormModelFormBuilderState
    extends State<ChoicesFormModelFormBuilder> {
  late ChoicesFormModelForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = ChoicesFormModelForm(
        ChoicesFormModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logChoicesFormModelForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChoicesFormModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveChoicesFormModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logChoicesFormModelForm = Logger.detached('ChoicesFormModelForm');

class ChoicesFormModelForm
    implements FormModel<ChoicesFormModel, ChoicesFormModel> {
  ChoicesFormModelForm(
    this.form,
    this.path,
  );

  static const String choicesControlName = "choices";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String choicesControlPath() => pathBuilder(choicesControlName);

  String get _choicesValue => choicesControl.value ?? '';

  String get _choicesRawValue => choicesControl.value ?? '';

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsChoices {
    try {
      form.control(choicesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get choicesErrors => choicesControl.errors;

  void get choicesFocus => form.focus(choicesControlPath());

  void choicesValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    choicesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void choicesValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    choicesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void choicesValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      choicesControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get choicesControl =>
      form.control(choicesControlPath()) as FormControl<String>;

  void choicesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      choicesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      choicesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ChoicesFormModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logChoicesFormModelForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ChoicesFormModel(choices: _choicesValue);
  }

  @override
  ChoicesFormModel get rawModel {
    return ChoicesFormModel(choices: _choicesRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(ChoicesFormModel? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ChoicesFormModelForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ChoicesFormModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logChoicesFormModelForm.info('Errors');
      _logChoicesFormModelForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ChoicesFormModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ChoicesFormModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ChoicesFormModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ChoicesFormModel? choicesFormModel) =>
      FormGroup({
        choicesControlName: FormControl<String>(
            value: choicesFormModel?.choices,
            validators: [
              RequiredValidator(),
              MaxLengthValidator(PostConfig.choicesMaxLength)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveChoicesFormModelFormArrayBuilder<
    ReactiveChoicesFormModelFormArrayBuilderT> extends StatelessWidget {
  const ReactiveChoicesFormModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveChoicesFormModelFormArrayBuilderT>? formControl;

  final FormArray<ReactiveChoicesFormModelFormArrayBuilderT>? Function(
      ChoicesFormModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ChoicesFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveChoicesFormModelFormArrayBuilderT> control,
      ReactiveChoicesFormModelFormArrayBuilderT? item,
      ChoicesFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChoicesFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveChoicesFormModelFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  formArray.controls[i]
                      as FormControl<ReactiveChoicesFormModelFormArrayBuilderT>,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveChoicesFormModelFormFormGroupArrayBuilder<
        ReactiveChoicesFormModelFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveChoicesFormModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveChoicesFormModelFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveChoicesFormModelFormFormGroupArrayBuilderT>>
      Function(ChoicesFormModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ChoicesFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveChoicesFormModelFormFormGroupArrayBuilderT? item,
      ChoicesFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveChoicesFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveChoicesFormModelFormFormGroupArrayBuilderT>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
