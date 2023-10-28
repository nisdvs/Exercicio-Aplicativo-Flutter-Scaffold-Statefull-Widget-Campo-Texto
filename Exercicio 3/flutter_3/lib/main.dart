import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String nome = '';
  String senha = '';
  Color containerColor = Colors.white;

  void verificarCredenciais() {
    if (nome == 'Senai' && senha == 'mobile23') {
      setState(() {
        containerColor = Colors.green;
      });
    } else {
      setState(() {
        containerColor = Colors.red;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verificador de Credenciais'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              color: containerColor,
              alignment: Alignment.center,
              child: Text(
                'Central',
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
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              onChanged: (text) {
                setState(() {
                  senha = text;
                });
              },
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: verificarCredenciais,
              child: Text('Verificar Credenciais'),
            ),
          ],
        ),
      ),
    );
  }
}
