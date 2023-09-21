import 'package:flutter/material.dart';

class IMCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOMA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IMCScreen(),
    );
  }
}

class IMCScreen extends StatefulWidget {
  @override
  _IMCScreenState createState() => _IMCScreenState();
}

class _IMCScreenState extends State<IMCScreen> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();

  double resultado = 0.0;
  var a = '';

  void media() {
    double altura = double.tryParse(alturaController.text) ?? 0.0;
    double peso = double.tryParse(pesoController.text) ?? 0.0;

    setState(() {
      resultado = peso /(altura * altura);

      if (resultado > 20) {
        a = 'Abaixo do normal';
      } else if (resultado > 20 && resultado <= 24.9) {
        a = 'Normal';
      } else if (resultado > 25 && resultado <= 29.9) {
        a = 'Obesidade Leve';
      } else if (resultado >= 30 && resultado <= 39.9) {
        a = 'Obesidade Moderada';
      } else if (resultado >= 43) {
        a = 'Obesidade Mórbida';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soma de TextFields'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Altura'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Peso'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: media,
              child: Text('Media'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Cor de fundo do botão "Multiplicar"
                onPrimary: Colors.white, // Cor do texto do botão "Multiplicar"
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Seu IMC é: $resultado',
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 248, 39, 24),
                  backgroundColor: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Sua situação é: $a',
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 248, 39, 24),
                  backgroundColor: Colors.white),
            ),
            ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar para a Tela Inicial'),
        ),
          ],
        ),
      ),
    );
  }
}
