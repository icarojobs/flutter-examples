import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Random Locations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List locais = [
    "Ribeirão Preto",
    "Sertãozinho",
    "Franca",
    "Araraquara",
    "São Paulo",
    "Curitiba"
  ];

  List<MaterialColor> cores = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
  ];

  String randomText = "";
  MaterialColor randomColor = Colors.blue;

  void _atualizarTela() {
    setState(() {
      randomText = locais[new Random().nextInt(locais.length)];
      randomColor = cores[new Random().nextInt(cores.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: _atualizarTela,
              color: randomColor,
              textColor: Colors.white,
              child: Text('Clique!'),
            ),
            Text(
              '$randomText',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      
    );
  }
}
