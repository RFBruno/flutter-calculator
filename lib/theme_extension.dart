import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext{

  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  
}