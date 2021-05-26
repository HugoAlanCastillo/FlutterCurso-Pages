import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GuardarPage extends StatefulWidget {
  final String _texto;
  GuardarPage(this._texto);

  @override
  _GuardarPageState createState() => _GuardarPageState();
}

class _GuardarPageState extends State<GuardarPage> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget._texto);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recordar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
