import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SomaApp(),
    );
  }
}

class SomaApp extends StatefulWidget {
  @override
  _SomaAppState createState() => _SomaAppState();
}

class _SomaAppState extends State<SomaApp> {
  TextEditingController numero1Controller = TextEditingController();
  TextEditingController numero2Controller = TextEditingController();
  TextEditingController numero3Controller = TextEditingController();
  String resultado = '';

  void calcularSoma() {
    double numero1 = double.tryParse(numero1Controller.text) ?? 0.0;
    double numero2 = double.tryParse(numero2Controller.text) ?? 0.0;
    double numero3 = double.tryParse(numero3Controller.text) ?? 0.0;
    double soma = numero1 + numero2 + numero3;
    setState(() {
      resultado = 'Soma: $soma';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Soma'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: numero1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: numero2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            TextField(
              controller: numero3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 3'),
            ),
            ElevatedButton(
              onPressed: calcularSoma,
              child: Text('Calcular Soma'),
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
