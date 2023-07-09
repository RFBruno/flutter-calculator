import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/calculator_controller.dart';
import 'package:flutter_calculator/core/theme/theme_extension.dart';
import 'package:flutter_calculator/core/widgets/my_container.dart';


Widget buttonRounded({
  String? title,
  double padding = 17,
  IconData? icon,
  Color? iconColor,
  Color? textColor,
  required bool darkMode,
  required BuildContext context,
  CalculatorController? controller
}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: InkWell(
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      onTap: () => title != null ? controller?.toCalculate(title) : controller?.toLastClean(),
      child: MyContainer(
        darkMode: darkMode,
        borderRadius: BorderRadius.circular(40),
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: padding * 2,
          height: padding * 2,
          child: Center(
              child: title != null
                  ? Text(
                      title,
                      style: context.bodyMedium?.copyWith(color: textColor),
                    )
                  : Icon(
                      icon,
                      color: iconColor,
                      size: 30,
                    )),
        ),
      ),
    ),
  );
}
