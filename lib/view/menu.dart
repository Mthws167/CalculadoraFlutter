import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu extends StatelessWidget {
  Widget criarBotao(String nomeBotao, VoidCallback? acaoBotao) {
    return ElevatedButton(
      child: Text(nomeBotao),
      onPressed: acaoBotao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
              criarBotao('Primeiro Botão',()=>print("Primeiro Botão")),
              criarBotao('Calcular idade',()=>Navigator.pushNamed(context,"/calcularIdade")),
              criarBotao('Hello World',()=>Navigator.pushNamed(context,"/helloWorld")),
              criarBotao('Calculadora',()=>Navigator.pushNamed(context,"/calculadora")),
          ],
        ),
      ),
    );
  }
}
