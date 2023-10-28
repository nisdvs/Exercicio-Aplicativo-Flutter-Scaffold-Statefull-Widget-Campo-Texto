import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NomeApp(),
    );
  }
}

class NomeApp extends StatefulWidget {
  @override
  _NomeAppState createState() => _NomeAppState();
}

class _NomeAppState extends State<NomeApp> {
  String nome = ""; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App do Nome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              color: Colors.lightBlue,
              alignment: Alignment.center,
              child: Text(
                nome,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (text) {
                setState(() {
                  nome = text; 
                });
              },
              decoration: InputDecoration(
                labelText: 'Digite seu nome',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Mostrar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
