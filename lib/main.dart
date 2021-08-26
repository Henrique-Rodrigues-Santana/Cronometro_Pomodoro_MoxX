import 'package:cronometromobx/Pages/Pomodoro.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Pomodoro(),
    );
  }
}


//import 'package:flutter_mobx/flutter_mobx.dart';

//import 'Store/contador.store.dart';

/* final store = ContadorStore();


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Meu app"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador em tempo real:',
            ),
            Observer(builder: (_) =>
                Text(
                  '${store.contador}',
                  style: Theme.of(context).textTheme.headline4,
                ),)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.incrementar,
        child: Icon(Icons.add),
      ),
    );
  }
}
*/
