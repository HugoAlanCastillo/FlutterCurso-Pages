import 'package:flutter/material.dart';

class HomePageTempDos extends StatelessWidget {
  final String opciones;

  HomePageTempDos(this.opciones);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          title: Text('Hugo Alan Castillo González '),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true),
      body: Center(
        child: Text(
          '¡HOLA!',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
