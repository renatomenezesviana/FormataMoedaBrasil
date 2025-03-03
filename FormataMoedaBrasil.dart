// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> newCustomAction(String? string) async {
// recebe string formata apenas números como moeda brasil (R$) e também retorna valor double
  // Se o input for nulo ou vazio, retorna valores padrão
  if (string == null || string.isEmpty) {
    return ['R\$ 0,00', 0.0];
  }

  try {
    // Remove any non-numeric characters from the string
    String numericString = string!.replaceAll(RegExp(r'[^0-9]'), '');

    // Convert the numeric string to a double value
    double value = double.parse(numericString) / 100;

    // Format the double value as a currency string with the R$ symbol
    NumberFormat formatter =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

    // Return the formatted value as a string and the double value
    return [formatter.format(value), value];
  } catch (e) {
    // Em caso de erro, retorna valores padrão
    return ['R\$ 0,00', 0.0];
  }
}