
import 'package:driver_app/features/dispatcher/presentation/states/initial_screen_state.dart';

enum FormStep {originCity,originNeighborhood,destinationCity,destinationNeighborhood, price, phone,comment}
class LogicScreenState {
  final FormStep step;
  final List<String> cities;
  final Map<String, List<String>> neighborhoods;
  final Map<String, List<int>> prices;
  final List<String> template;
  final Map<FormStep,String> selectedValue;
  LogicScreenState({
    required this.template,
    required this.step,
    required this.cities,
    required this.neighborhoods,
    required this.prices,
    required this.selectedValue,
  });
  LogicScreenState copyWith({
    List<String>? template,
    FormStep? step,
        List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, List<int>>? prices,
    Map<FormStep,String>? selectedValue,
  }) {
    return LogicScreenState(
      template: template ?? this.template,
      step: step?? this.step,
      cities: cities ?? this.cities,
      neighborhoods: neighborhoods ?? this.neighborhoods,
      prices: prices ?? this.prices,
      selectedValue: selectedValue ?? this.selectedValue
    );
  }

  static LogicScreenState initial(InitialScreenState initialScreenState) {
    return LogicScreenState(
      template: initialScreenState.cities,
      step: FormStep.originCity,
      selectedValue: {},
      cities: initialScreenState.cities,
      neighborhoods: initialScreenState.neighborhoods,
      prices: initialScreenState.prices,
    );
  }

  List<String> getTemplates() {
    switch (step) {
      case FormStep.originCity:
      case FormStep.destinationCity:
        return cities;
      case FormStep.originNeighborhood:
        return neighborhoods[selectedValue[FormStep.originCity]] ?? [];
      case FormStep.destinationNeighborhood:
        return neighborhoods[selectedValue[FormStep.destinationCity]] ?? [];
      case FormStep.price:
        final values = prices[selectedValue[FormStep.originCity]! + '' + selectedValue[FormStep.destinationCity]!] ?? prices['default'];
        return values!.map((int) => int.toString() ).toList();
      case FormStep.phone:
        return ['העתק טלפון מהלוח'];
      case FormStep.comment:
        return ['פרטים נוספים'];
    }
  }
  FormStep getStepByLine(int line){
    return FormStep.values[line];
  }
}
