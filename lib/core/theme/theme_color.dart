import 'package:flutter/material.dart';

ThemeData themeLight = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFe6eeff),  
  primaryColor: Colors.orange.shade700,
  textTheme: TextTheme(
    
    headlineMedium: TextStyle(
      fontSize: 55,
      fontWeight: FontWeight.bold,
      color: Colors.orange.shade700,
    ),
    
    headlineSmall: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),

    bodyMedium: const TextStyle(
      color: Colors.black,
      fontSize: 30,
    )
  ),
);

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF374352),
  primaryColor: Colors.red.shade400,
  textTheme: TextTheme(
    
    headlineMedium: const TextStyle(
      fontSize: 55,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.red.shade400,
    ),

    bodyMedium: const TextStyle(
      color: Colors.white,
      fontSize: 30,
    )
  ),
);
