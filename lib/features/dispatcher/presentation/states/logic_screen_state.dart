
import 'package:driver_app/features/dispatcher/presentation/states/initial_screen_state.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';

enum FormStep {city,neighborhood, price, comment,phone}
class DispatchState {
  final FormStep step;
  final List<String> cities;
  final Map<String, List<String>> neighborhoods;
  final Map<String, int> prices;
  final Map<int,String> selectedValue;
  DispatchState({
    required this.step,
    required this.cities,
    required this.neighborhoods,
    required this.prices,
    required this.selectedValue,
  });
  DispatchState copyWith({
    FormStep? step,
        List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, int>? prices,
    Map<int,String>? selectedValue,
  }) {
    return DispatchState(
      step: step?? this.step,
      cities: cities ?? this.cities,
      neighborhoods: neighborhoods ?? this.neighborhoods,
      prices: prices ?? this.prices,
      selectedValue: selectedValue ?? this.selectedValue
    );
  }

  static DispatchState initial(User user,InitialScreenState initialScreenState) {
    return DispatchState(
      step: FormStep.city,
      selectedValue: {},
      cities: initialScreenState.cities,
      neighborhoods: initialScreenState.neighborhoods,
      prices: initialScreenState.prices,
    );
  }

  List<String> getTemplates() {
    switch (step) {
      case FormStep.city:
        return cities;
      case FormStep.neighborhood:
        return neighborhoods[selectedValue[1]] ?? [];
      case 3:
        return neighborhoods[selectedValue[3]] ?? [];
      case FormStep.price:
        return prices[selectedValue[3]] != null
            ? [prices[selectedValue[2]! + '' + selectedValue[3]!].toString()]
            : [];
      case FormStep.phone:
        return ['העתק טלפון מהלוח'];
      case FormStep.comment:
        return ['פרטים נוספים'];
    }
  }
}
