import 'package:flutter/material.dart';




class MediaScreen extends StatefulWidget {
  @override
  _MediaScreenState createState() => _MediaScreenState();
}


class _MediaScreenState extends State<MediaScreen> {
  TextEditingController primeiroNumeroController = TextEditingController();
  TextEditingController segundoNumeroController = TextEditingController();
  TextEditingController terceiroNumeroController = TextEditingController();
  TextEditingController quartoNumeroController = TextEditingController();


  double resultado = 0.0;
  var a = '';


  void media() {
    double primeiroNumero =
        double.tryParse(primeiroNumeroController.text) ?? 0.0;
    double segundoNumero = double.tryParse(segundoNumeroController.text) ?? 0.0;
    double terceiroNumero =
        double.tryParse(terceiroNumeroController.text) ?? 0.0;
    double quartoNumero = double.tryParse(quartoNumeroController.text) ?? 0.0;


    setState(() {
      resultado =
          (primeiroNumero + segundoNumero + terceiroNumero + quartoNumero) / 4;
      if (resultado >= 7) {
        a = 'Aprovado';
      } else {
        a = 'Reprovado';
      }
    });
  }


  void somar() {
    double primeiroNumero =
        double.tryParse(primeiroNumeroController.text) ?? 0.0;
    double segundoNumero = double.tryParse(segundoNumeroController.text) ?? 0.0;


    setState(() {
      resultado = primeiroNumero + segundoNumero;
    });
  }


  void subtrair() {
    double primeiroNumero =
        double.tryParse(primeiroNumeroController.text) ?? 0.0;
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
            TextField(
              controller: terceiroNumeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 3'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: quartoNumeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 4'),
            ),
            SizedBox(height: 20),
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
              'Sua média é: $resultado',
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