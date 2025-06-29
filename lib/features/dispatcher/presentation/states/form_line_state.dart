import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';

class FormLine {
  final String value;
  final FormStep? step;

  FormLine({required this.value, this.step});

  FormLine copyWith({String? value, FormStep? step}) {
    return FormLine(
      value: value ?? this.value,
      step: step ?? this.step,
    );
  }
}
