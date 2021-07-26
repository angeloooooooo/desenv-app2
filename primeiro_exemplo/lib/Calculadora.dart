import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(" Calculadora - simples "),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campovalor1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campovalor2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: multiplicar,
                ),
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: dividir,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Limpar",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    color: Colors.blueGrey,
                    onPressed: limpar)
              ],
            )
          ],
        ),
      ),
    );
  }

  var valor1;
  var valor2;
  var resultado;

  TextEditingController campovalor1 = new TextEditingController(text: "");
  TextEditingController campovalor2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      valor1 = num.parse(campovalor1.text);
      valor2 = num.parse(campovalor2.text);
      resultado = valor1 + valor2;
    });
  }

  void subtrair() {
    setState(() {
      valor1 = num.parse(campovalor1.text);
      valor2 = num.parse(campovalor2.text);
      resultado = valor1 - valor2;
    });
  }

  void multiplicar() {
    setState(() {
      valor1 = num.parse(campovalor1.text);
      valor2 = num.parse(campovalor2.text);
      resultado = valor1 * valor2;
    });
  }

  void dividir() {
    setState(() {
      valor1 = num.parse(campovalor1.text);
      valor2 = num.parse(campovalor2.text);
      resultado = valor1 / valor2;
    });
  }

  void limpar() {
    setState(() {
      resultado = 0;
      campovalor1.text = "";
      campovalor2.text = "";
    });
  }
}
