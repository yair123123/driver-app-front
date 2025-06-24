import 'package:driver_app/features/dispatcher/presentation/states/form_line_state.dart';
import 'package:driver_app/features/dispatcher/presentation/states/initial_screen_state.dart';

enum FormStep {
  originCity,
  originNeighborhood,
  destinationCity,
  destinationNeighborhood,
  price,
  phone,
  comment
}

class LogicScreenState {
  final List<FormLine> lines;
  final FormStep currentStep;
  final List<String> template;
  final List<String> cities;
  final Map<String, List<String>> neighborhoods;
  final Map<String, List<int>> prices;
  final List<String> comments;
  LogicScreenState({
    required this.lines,
    required this.currentStep,
    required this.template,
    required this.cities,
    required this.neighborhoods,
    required this.prices,
    required this.comments,
  });

  LogicScreenState copyWith({
    List<FormLine>? lines,
    FormStep? currentStep,
    List<String>? template,
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, List<int>>? prices,
    List<String>? comments,
  }) {
    return LogicScreenState(
      lines: lines ?? this.lines,
      currentStep: currentStep ?? this.currentStep,
      template: template ?? this.template,
      cities: cities ?? this.cities,
      neighborhoods: neighborhoods ?? this.neighborhoods,
      prices: prices ?? this.prices,
      comments: comments ?? this.comments,
    );
  }

  static LogicScreenState initial(InitialScreenState init) {
    final initialLines = FormStep.values
        .map((step) => FormLine(value: '', step: step))
        .toList();
    return LogicScreenState(
      lines: initialLines,
      currentStep: FormStep.originCity,
      template: init.cities,
      cities: init.cities,
      neighborhoods: init.neighborhoods,
      prices: init.prices,
      comments: init.comments,
    );
  }

  List<String> getTemplatesForStep(FormStep step) {
    switch (step) {
      case FormStep.originCity:
      case FormStep.destinationCity:
        return cities;
      case FormStep.originNeighborhood:
        final origin = getValueForStep(FormStep.originCity);
        return neighborhoods[origin] ?? [];
      case FormStep.destinationNeighborhood:
        final dest = getValueForStep(FormStep.destinationCity);
        return neighborhoods[dest] ?? [];
      case FormStep.price:
        final key = '${getValueForStep(FormStep.originCity)}${getValueForStep(FormStep.destinationCity)}';
        return (prices[key] ?? prices['default'])?.map((e) => e.toString()).toList() ?? [];
      case FormStep.phone:
        return ['העתק טלפון מהלוח'];
      case FormStep.comment:
        return comments;
    }
  }

  String getValueForStep(FormStep step) {
    return lines.firstWhere((line) => line.step == step, orElse: () => FormLine(value: '', step: step)).value;
  }
}
