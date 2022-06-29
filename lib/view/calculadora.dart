import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculadora extends StatelessWidget {
  int? numero0;
  int? numero1;
  int? numero2;
  int? numero3;
  int? numero4;
  int? numero5;
  int? numero6;
  int? numero7;
  int? numero8;
  int? numero9;
  String? operacaoSoma;
  String? operacaoSubtracao;


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
              ElevatedButton(
                  child: Text("7"),
                  onPressed: () {
                    numero7 = 7;
                  }),
              ElevatedButton(
                  child: Text("8"),
                  onPressed: () {
                    numero8 = 8;
                  }),
              ElevatedButton(
                  child: Text("9"),
                  onPressed: () {
                    numero9 = 9;
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("4"),
                  onPressed: () {
                    numero4 = 4;
                  }),
              ElevatedButton(
                  child: Text("5"),
                  onPressed: () {
                    numero5 = 5;
                  }),
              ElevatedButton(
                  child: Text("6"),
                  onPressed: () {
                    numero6 = 6;
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("1"),
                  onPressed: () {
                    numero1 = 1;
                  }),
              ElevatedButton(
                  child: Text("2"),
                  onPressed: () {
                    numero2 = 2;
                  }),
              ElevatedButton(
                  child: Text("3"),
                  onPressed: () {
                    numero3 = 3;
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("+"),
                  onPressed: () {
                    operacaoSoma = "+";
                  }),
              ElevatedButton(
                  child: Text("0"),
                  onPressed: () {
                    numero0 = 0;
                  }),
              ElevatedButton(
                  child: Text("-"),
                  onPressed: () { 
                    operacaoSubtracao = "-";
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(176,40),
                ),
                child:Text("=",),
                onPressed: (){

              }),
            ],
          ),
        ],
      ),
    );
  }
}
