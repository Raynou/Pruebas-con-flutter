import 'package:flutter/material.dart';
import 'main.dart';

class MyBackWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[MyGradient(), MyClassModel()],
      ),
    );
  }
}

class MyGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        //Qué clase de valores acepta el lenguaje, pq no me aceptó hexadecimal
        Color(0xFFffbb00),
        Color(0xFFf38c02),
      ])),
    );
  }
}
