import 'package:driver_app/features/dispatcher/domain/entities/location/city.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/location_abstract.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_line_state.dart';

enum FormStep {
  originCity,
  originNeighborhood,
  destinationCity,
  destinationNeighborhood,
  price,
  phone,
  comment,
}

class LogicScreenState {
  final bool isInternal;
  final List<FormLine> lines;
  final FormStep currentStep;
  final List<String> template;
  final List<City> cities;
  final Map<String, List<int>> prices;
  final List<String> comments;
  LogicScreenState({
    this.isInternal = false,
    required this.lines,
    this.currentStep = FormStep.originCity,
    required this.template,
    required this.cities,
    required this.prices,
    required this.comments,
  });

  LogicScreenState copyWith({
    bool? isInternal,
    List<FormLine>? lines,
    FormStep? currentStep,
    List<String>? template,
    List<City>? cities,
    Map<String, List<int>>? prices,
    List<String>? comments,
  }) {
    return LogicScreenState(
      isInternal: isInternal ?? this.isInternal,
      lines: lines ?? this.lines,
      currentStep: currentStep ?? this.currentStep,
      template: template ?? this.template,
      cities: cities ?? this.cities,
      prices: prices ?? this.prices,
      comments: comments ?? this.comments,
    );
  }

  static LogicScreenState initial(DispatchState initState) {
    final initialLines =
        FormStep.values.map((step) => FormLine(value: '', step: step)).toList();

    return LogicScreenState(
      lines: initialLines,
      template: sortStringsByFrequency(initState.cities!),
      cities: initState.cities!,
      prices: initState.prices!,
      comments: initState.comments!,
    );
  }

  List<String> getTemplatesForStep(FormStep step) {
    switch (step) {
      case FormStep.originCity:
      case FormStep.destinationCity:
        return sortStringsByFrequency(cities);
      case FormStep.originNeighborhood:
        final cityOrigin = getValueForStep(FormStep.originCity);
        return sortStringsByFrequency(
          cities
              .firstWhere(
                (c) => c.name == cityOrigin,
                orElse: () => City(name: '', frequency: 0, neighborhoods: []),
              )
              .neighborhoods,
        );
      case FormStep.destinationNeighborhood:
        final destCity = getValueForStep(FormStep.destinationCity);
        return sortStringsByFrequency(
          cities
              .firstWhere(
                (c) => c.name == destCity,
                orElse: () => City(name: '', frequency: 0, neighborhoods: []),
              )
              .neighborhoods,
        );
      case FormStep.price:
        final key =
            '${getValueForStep(FormStep.originCity)}${getValueForStep(FormStep.destinationCity)}';
        return (prices[key] ?? prices['default'])
                ?.map((e) => e.toString())
                .toList() ??
            [];
      case FormStep.phone:
        return ['העתק טלפון מהלוח'];
      case FormStep.comment:
        return comments;
    }
  }

  String getValueForStep(FormStep step) {
    return lines
        .firstWhere(
          (line) => line.step == step,
          orElse: () => FormLine(value: '', step: step),
        )
        .value;
  }
static List<String> sortStringsByFrequency(List<LocationAbstract> locations) {
  final mutableLocations = locations.toList(); 
  mutableLocations.sort((a, b) => b.frequency.compareTo(a.frequency));
  return mutableLocations.map((location) => location.name).toList();
}

}
