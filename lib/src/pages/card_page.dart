import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          title: Text('CardPage'),
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
