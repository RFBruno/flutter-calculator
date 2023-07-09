import 'dart:developer';

import 'package:flutter/material.dart';

class CalculatorController {
  final ValueNotifier resultVN;
  var inputCalculate = '';
  var setCalculate = [];
  dynamic result = 0;
  var operators = ['/', 'x', '-', '+'];

  CalculatorController({required this.resultVN});

  void toCalculate(String title) {
    var isOperator = operators.contains(title);

    if (isOperator) {
      if(inputCalculate.contains(title)){
        execute(title);
      }else{
        var hasOperator = false;
        var operatorIs;
        for (var operator in operators) {
          if(inputCalculate.contains(operator)){
            hasOperator = true;
            operatorIs = operator;
            break;
          }
        }
        if(hasOperator){
          execute(operatorIs);
        }else{
          inputCalculate += title;
        }
      }
      // if (setCalculate.isNotEmpty) {
      //   if (setCalculate.length == 3) {
      //     execute();
      //   } else if (inputCalculate.isNotEmpty) {
      //     setCalculate.add(inputCalculate);
      //     inputCalculate = '';
      //     if (setCalculate.length == 3) {
      //       execute();
      //     }
      //   }else{
      //     setCalculate.add(title);
      //   }
      // } else {
      //   if (inputCalculate.isNotEmpty) {
      //     setCalculate.add(inputCalculate);
      //     setCalculate.add(title);
      //     inputCalculate = '';
      //   }
      // }
    } else {
      inputCalculate += title;
    }
      resultVN.value = inputCalculate.toString();
    log(inputCalculate);
    log(setCalculate.toString());
    // if(setCalculate.isEmpty){
    // }else{
    //   resultVN.value = '${setCalculate[0] ?? ''} ${setCalculate[1] ?? ''} ${setCalculate[2] ?? ''}';
    // }
  }

  void execute(operator) {
    var calc = inputCalculate.split(operator);
    switch (operator) {
      case '+':
        result = num.parse(calc[0]) + num.parse(calc[1]);
        break;
      case '-':
        result = num.parse(calc[0]) - num.parse(calc[1]);
        break;
      case 'x':
        result = num.parse(calc[0]) * num.parse(calc[1]);
        break;
      case '/':
        result = num.parse(calc[0]) / num.parse(calc[1]);
        break;
    }

    inputCalculate = result.toString();

    log('result $result');
  }

  void toLastClean() {
    log('limpar o ultimo');
  }
}
