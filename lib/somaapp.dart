import 'package:flutter/material.dart';

class SomaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOMA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SomaScreen(),
    );
  }
}

class SomaScreen extends StatefulWidget {
  @override
  _SomaScreenState createState() => _SomaScreenState();
}

class _SomaScreenState extends State<SomaScreen> {

  TextEditingController primeiroNumeroController = TextEditingController();
  TextEditingController segundoNumeroController = TextEditingController();
  double resultado = 0.0;

  void somar() {
    double primeiroNumero = double.tryParse(primeiroNumeroController.text) ?? 0.0;
    double segundoNumero = double.tryParse(segundoNumeroController.text) ?? 0.0;
   
    setState(() {
      resultado = primeiroNumero + segundoNumero;
    });
  }
  void subtrair() {
    double primeiroNumero = double.tryParse(primeiroNumeroController.text) ?? 0.0;
    double segundoNumero = double.tryParse(segundoNumeroController.text) ?? 0.0;
   
    setState(() {
      resultado = primeiroNumero - segundoNumero;
    });
  }
  void dividir() {
    double primeiroNumero = double.tryParse(primeiroNumeroController.text) ?? 1;
    double segundoNumero = double.tryParse(segundoNumeroController.text) ?? 1;
   
    setState(() {
      resultado = primeiroNumero / segundoNumero;
    });
  }
  void multiplicar() {
    double primeiroNumero = double.tryParse(primeiroNumeroController.text) ?? 1;
    double segundoNumero = double.tryParse(segundoNumeroController.text) ?? 1;
   
    setState(() {
      resultado = primeiroNumero * segundoNumero;
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
              controller: primeiroNumeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),

            SizedBox(height: 10),

            TextField(
              controller: segundoNumeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),

            SizedBox(height: 20),
           
            ElevatedButton(
              onPressed: somar,
              child: Text('Somar'),
            ),

          SizedBox(height: 20),

            ElevatedButton(
              onPressed: subtrair,
              child: Text('Subtrair'),
            ),

          SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: multiplicar,
              child: Text('Multiplicar'),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: dividir,
              child: Text('Dividir'),
            ),

            SizedBox(height: 20),

            Text(
              'Resultado: $resultado',
              style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 167, 109, 105),backgroundColor: Colors.blue),
            ),

            SizedBox(height: 20),

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