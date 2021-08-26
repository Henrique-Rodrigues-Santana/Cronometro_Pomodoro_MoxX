import 'package:flutter/material.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              "25:00",
              style: TextStyle(fontSize: 120,color: Colors.white),
            ),
          )


        ],
      ),
    );
  }
}