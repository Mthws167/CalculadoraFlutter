import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelloWorld extends StatelessWidget {
  String? nome;

  mostrarResultado(String resultado, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(resultado,
            style: const TextStyle(fontSize: 20),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              label: Text('Nome:'),
              hintText: 'Digite seu nome completo',
            ),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),ElevatedButton(
            child: Text('Apresentar'),
            onPressed: () {
              var resultado =  "Hello World "+"${nome}!";
              mostrarResultado(resultado.toString(), context);
            },
          )
        ],
      ),
    );
  }
}
