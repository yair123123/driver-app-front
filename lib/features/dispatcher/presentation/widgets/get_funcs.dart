import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../states/logic_screen_state.dart';

String getLabel(FormStep step) {
  switch (step) {
    case FormStep.originCity:
      return 'עיר מוצא';
    case FormStep.originNeighborhood:
      return 'שכונת מוצא';
    case FormStep.originStreet:
      return 'רחוב מוצא';
    case FormStep.destinationCity:
      return 'עיר יעד';
    case FormStep.destinationNeighborhood:
      return 'שכונת יעד';
    case FormStep.destinationStreet:
      return 'רחוב יעד';
    case FormStep.price:
      return '(₪) מחיר';
    case FormStep.phone:
      return 'טלפון נוסע';
    case FormStep.comment:
      return 'הערות';
  }
}

String? getHelperText(FormStep step) {
  switch (step) {
    case FormStep.phone:
      return 'יוצג לנהג רק אחרי האישור';
    default:
      return null;
  }
}

TextInputType getKeyboardType(FormStep step) {
  switch (step) {
    case FormStep.phone:
      return TextInputType.phone;
    case FormStep.price:
      return TextInputType.number;
    case FormStep.comment:
      return TextInputType.multiline;
    default:
      return TextInputType.text;
  }
}

Icon? getPrefixIcon(FormStep step) {
  switch (step) {
    case FormStep.phone:
      return const Icon(Icons.phone, size: 20);
    case FormStep.price:
      return const Icon(Icons.monetization_on, size: 20);
    case FormStep.comment:
      return const Icon(Icons.comment, size: 20);
    case FormStep.originCity:
    case FormStep.destinationCity:
      return const Icon(Icons.location_city, size: 20);
    case FormStep.originNeighborhood:
    case FormStep.destinationNeighborhood:
      return const Icon(Icons.location_on, size: 20);
    case FormStep.originStreet:
    case FormStep.destinationStreet:
      return const Icon(Icons.route, size: 20);
  }
}

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String text = newValue.text.replaceAll('-', '');
    if (text.length >= 3) {
      text = "${text.substring(0, 3)}-${text.substring(3)}".replaceAll(
        '\n',
        '',
      );
    }
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

List<TextInputFormatter> getInputFormatters(FormStep step) {
  switch (step) {
    case FormStep.phone:
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
        PhoneNumberFormatter(),
      ];
    case FormStep.price:
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(6),
      ];
    default:
      return [];
  }
}

String? Function(String?)? getDefaultValidator(FormStep step) {
  return (value) {
    final trimmed = value?.trim() ?? '';
    if (trimmed.isEmpty) {
      return 'שדה חובה';
    }
    switch (step) {
      case FormStep.phone:
        if (trimmed.replaceAll('-', '').length != 10) {
          return 'מספר טלפון חייב להכיל 10 ספרות';
        }
        break;
      case FormStep.price:
        final price = int.tryParse(trimmed);
        if (price == null || price <= 0) {
          return 'מחיר חייב להיות מספר חיובי';
        }
        break;
      default:
        if (trimmed.length < 2) {
          return 'שדה חייב להכיל לפחות 2 תווים';
        }
    }
    return null;
  };
}

String? getHintText(FormStep step) {
  switch (step) {
    case FormStep.phone:
      return '050-1234567';
    case FormStep.price:
      return '100';
    case FormStep.comment:
      return 'הערות נוספות לנסיעה';
    default:
      return null;
  }
}
