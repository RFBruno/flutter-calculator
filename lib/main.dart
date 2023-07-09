import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/calculator_app.dart';
import 'package:flutter_calculator/core/theme/theme_color.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var darkModeVN = ValueNotifier<bool>(true);
    return ValueListenableBuilder<bool>(
      valueListenable: darkModeVN,
      builder: (_, darkModeValue, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calculator Neumorphism',
          theme: darkModeValue ? themeDark : themeLight,
          home: CalculatorApp(darkModeVN: darkModeVN),
        );
      },
    );
  }
}
