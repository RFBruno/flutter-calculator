import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/calculator_controller.dart';
import 'package:flutter_calculator/core/theme/theme_extension.dart';
import 'package:flutter_calculator/core/widgets/button_oval.dart';
import 'package:flutter_calculator/core/widgets/button_rounded.dart';
import 'package:flutter_calculator/core/widgets/switch_mode.dart';

class CalculatorApp extends StatelessWidget {
  final darkModeVN;
  final resultVN = ValueNotifier<String>('0');
  CalculatorApp({required this.darkModeVN, super.key});

  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    final controller = CalculatorController(resultVN: resultVN);
    darkMode = darkModeVN.value;

    Widget _setButtonOval({required String title}) {
      return buttonOval(
        title: title,
        context: context,
        darkMode: darkMode,
        controller: controller
      );
    }

    Widget _setButtonRounded(
        {String? title, Color? textColor, IconData? icon, Color? iconColor}) {
      return buttonRounded(
        title: title,
        textColor: textColor,
        icon: icon,
        iconColor: iconColor,
        context: context,
        darkMode: darkMode,
        controller: controller,
      );
    }

    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(10, constraints.maxHeight * 0.05, 10, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder(
                    valueListenable: resultVN,
                    builder: (_, resultVNValue, child) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              darkModeVN.value = !darkMode;
                            },
                            child: switchMode(
                              darkMode: darkMode,
                            ),
                          ),
                          const SizedBox(height: 80),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '$resultVNValue',
                              style: context.headlineMedium,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '=',
                                style: context.headlineSmall
                                    ?.copyWith(fontSize: 35),
                              ),
                              Text('500*12', style: context.headlineSmall)
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    },
                  ),
                  Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: ['sin', 'cos', 'tan', '%'].map((title) => _setButtonOval(title: title)).toList()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _setButtonRounded(
                          title: 'C',
                          textColor: context.primaryColor,
                        ),
                        ...['(', ')']
                            .map((title) => _setButtonRounded(title: title))
                            .toList(),
                        _setButtonRounded(
                          title: '/',
                          textColor: context.primaryColor,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...['7', '8', '9']
                            .map((title) => _setButtonRounded(title: title))
                            .toList(),
                        _setButtonRounded(
                          title: 'x',
                          textColor: context.primaryColor,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...['4', '5', '6']
                            .map((title) => _setButtonRounded(title: title))
                            .toList(),
                        _setButtonRounded(
                          title: '-',
                          textColor: context.primaryColor,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...['1', '2', '3']
                            .map((title) => _setButtonRounded(title: title))
                            .toList(),
                        _setButtonRounded(
                          title: '+',
                          textColor: context.primaryColor,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...['0', ',']
                            .map((title) => _setButtonRounded(title: title))
                            .toList(),
                        _setButtonRounded(
                          icon: Icons.backspace_outlined,
                          iconColor: context.primaryColor,
                        ),
                        _setButtonRounded(
                          title: '=',
                          textColor: context.primaryColor,
                        )
                      ],
                    )
                  ]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
