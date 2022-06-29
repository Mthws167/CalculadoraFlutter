import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculadora extends StatelessWidget {
  String operacao = '+';
  final memoria = [0.0, 0.0];
  String resultado = '';
  Widget botao(String nomeBotao, VoidCallback funcao) {
    return ElevatedButton(
      child: Text(nomeBotao),
      onPressed: funcao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botao("AC", () {
                operacao = '';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
              botao("CE", () {
                operacao = 'CE';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
              botao("%", () {
                operacao = '%';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
              botao("/", () {
                operacao = '/';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botao("7", () {
                resultado += "7";
              }),
              botao("8", () {
                resultado += "8";
              }),
              botao("9", () {
                resultado += "9";
              }),
              botao("x", () {
                operacao = 'x';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botao("4", () {
                resultado += "4";
              }),
              botao("5", () {
                resultado += "5";
              }),
              botao("6", () {
                resultado += "6";
              }),
              botao("-", () {
                operacao = '-';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botao("1", () {
                resultado += "1";
              }),
              botao("2", () {
                resultado += "2";
              }),
              botao("3", () {
                resultado += "3";
              }),
              botao("+", () {
                operacao = '+';
                memoria[0] = double.parse(resultado);
                resultado = '';
              }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botao("0", () {
                resultado += "0";
              }),
              botao("=", () {
                if (resultado == '') {
                  print("0");
                } else {
                  memoria[1] = double.parse(resultado);
                  double calculo = 0.0;
                  switch (operacao) {
                    case "AC":
                      calculo = 0.0;
                      break;
                    case "CE":
                      calculo = memoria[0];
                      break;
                    case "%":
                      calculo = memoria[0] % memoria[1];
                      break;
                    case "/":
                      calculo = memoria[0] / memoria[1];
                      break;
                    case "x":
                      calculo = memoria[0] * memoria[1];
                      break;
                    case "-":
                      calculo = memoria[0] - memoria[1];
                      break;
                    case "+":
                      calculo = memoria[0] + memoria[1];
                      break;
                  }
                  print(calculo);
                }
              })
            ],
          ),
        ],
      ),
    );
  }
}
