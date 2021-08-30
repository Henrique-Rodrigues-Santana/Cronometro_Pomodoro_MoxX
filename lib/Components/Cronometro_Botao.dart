import 'package:cronometromobx/Store/Pomodoro.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        textStyle: TextStyle(
          fontSize: 25
      )
      ),
        onPressed: (){},
        child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(
            icone,
            size: 25,
          ),
        ),
        Text(
          texto
        )

      ],
    ));
  }
}
