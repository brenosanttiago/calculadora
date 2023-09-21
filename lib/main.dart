import 'package:flutter/material.dart';
import 'package:frutter/calculadoraapp.dart';
import 'imcapp.dart';
import 'mediaapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação com Rotas',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => MediaScreen(),
        '/thirdy': (context) => CalculadoraScreen(),
        '/fourth': (context) => IMCScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

             ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Ir para a tela de MEDIA'),
        ),

            SizedBox(height: 10),

             ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/thirdy');
          },
          child: Text('Ir para a tela de CALCULADORA'),
        ),
            SizedBox(height: 10),

             ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/fourth');
          },
          child: Text('Ir para a tela de IMC'),
        ),
            
          ],
        ),
      ),
    );
  }
}
