import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: CustomColors.primaryColor,
  secondaryHeaderColor: CustomColors.secondaryColor,
  disabledColor: CustomColors.disableColor,
  backgroundColor: CustomColors.whiteColor,
  errorColor: CustomColors.disableColor,
  brightness: Brightness.light,
  hintColor: CustomColors.disableColor,
  cardColor: CustomColors.cardColor,
  colorScheme: const ColorScheme.light(primary: Color(0xFF374657), secondary: Color(0xFF270F0C)),
);

