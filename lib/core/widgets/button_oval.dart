import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/calculator_controller.dart';
import 'package:flutter_calculator/core/theme/theme_extension.dart';
import 'package:flutter_calculator/core/widgets/my_container.dart';


Widget buttonOval({required String title, double padding = 17, required bool darkMode, required BuildContext context, CalculatorController? controller}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => controller?.toCalculate(title),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        child: MyContainer(
          darkMode: darkMode,
          borderRadius: BorderRadius.circular(50),
          padding:
              EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
          child: SizedBox(
            width: padding * 2,
            child: Center(
              child: Text(
                title,
                style: context.bodyMedium?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }