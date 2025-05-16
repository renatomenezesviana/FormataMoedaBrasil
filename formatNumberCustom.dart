// https://www.youtube.com/watch?v=ATPM_mtM1aA
// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

String? formatNumberCustom(
  String? stringNumber,
  String? locale,
  String? customPattern,
  String? symbol,
  int? decimalDigits,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE
  if (stringNumber == null || stringNumber.isEmpty) {
    FFAppState().APPStateValorDouble = 0;
    return '0';
  }
  try {
    //Convert the input from String to Double
    stringNumber = stringNumber?.replaceAll(',', '.');
    if (stringNumber != null) {
      var number = double.parse(stringNumber);

      String formatadoString = NumberFormat.currency(
              //Parameters
              locale: locale,
              customPattern: customPattern,
              symbol: symbol,
              decimalDigits: decimalDigits)
          //Format
          .format(number);
      FFAppState().APPStateValorDouble = number;
      return formatadoString;
    }

    //If something goes wrong, catch the error
  } catch (e) {
    //And return '0' to avoid null
    FFAppState().APPStateValorDouble = 0;
    return '0';
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
