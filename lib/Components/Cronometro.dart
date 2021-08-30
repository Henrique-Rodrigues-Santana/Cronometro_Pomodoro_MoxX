import 'package:cronometromobx/Store/Pomodoro.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'Cronometro_Botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  Text("Hora de Trabalhar",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "${store.minuto.toString().padLeft(2,'0')}:${store.segundos.toString().padLeft(2,'0')}",
              style: TextStyle(fontSize: 120,color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if(!store.iniciar)
                    CronometroBotao(
                        icone: Icons.play_arrow,
                        texto: "Iniciar",
                        click: store.inicia
                    ),
                  if(store.iniciar)
                    CronometroBotao(
                      icone: Icons.stop,
                      texto: "Parar",
                      click: store.parar,
                    ),
                  CronometroBotao(
                      icone: Icons.refresh,
                      texto: "Reiniciar",
                      click: store.reiniciar,
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
