import 'package:cronometromobx/Components/Cronometro.dart';
import 'package:cronometromobx/Components/EntredaTempo.dart';
import 'package:cronometromobx/Store/Pomodoro.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final store = Provider.of<PomodoroStore>(context);


    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Cronometro()),

          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Observer(builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  titulo: "Trabalho",
                  valor: store.tempoTrabalho,
                  inc: store.incrementarTempoTrabalho,
                  dec: store.decrementarTempoTrabalho,
                ),
                EntradaTempo(
                  titulo: "Descanso",
                  valor: store.tempoDescanso,
                  inc: store.incrementarTempoDescanso,
                  dec: store.decrementarTempoDescanso,
                )
              ],
            )
            )
          )
        ],
      ),
    );
  }
}
