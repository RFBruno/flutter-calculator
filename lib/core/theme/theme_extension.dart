import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext{

  Color get primaryColor => Theme.of(this).primaryColor;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;

  
}