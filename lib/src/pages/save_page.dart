import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SavePage extends StatefulWidget {
final String _texto ;
SavePage(this._texto);

  @override
  _SavePageState createState()=>_SavePageState();
}
class _SavePageState extends State<SavePage>{
TextEditingController _controller;
  @override
  void initState(){
    _controller= TextEditingController(text: widget._texto);
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
            controller:  _controller,
            ),   
          ],
        ),
      ), 
    );
  }
}