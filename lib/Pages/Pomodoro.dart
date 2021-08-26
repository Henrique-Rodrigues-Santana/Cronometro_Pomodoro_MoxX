import 'package:cronometromobx/Components/Cronometro.dart';
import 'package:cronometromobx/Components/EntredaTempo.dart';
import 'package:flutter/material.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Cronometro()),

          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(titulo: "Trabalho", valor: 25),
                EntradaTempo(titulo: "Descanso", valor: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
