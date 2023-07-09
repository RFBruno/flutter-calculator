import 'package:flutter/material.dart';
import 'package:flutter_calculator/core/widgets/my_container.dart';

Widget switchMode({required bool darkMode}) {
    return MyContainer(
      darkMode: darkMode,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      borderRadius: BorderRadius.circular(40),
      child: SizedBox(
        width: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.wb_sunny,
            color: darkMode ? Colors.grey : Colors.orange.shade700,
          ),
          Icon(
            Icons.nightlight_round,
            color: darkMode ? Colors.blue.shade100 : Colors.grey,
          ),
        ]),
      ),
    );
  }