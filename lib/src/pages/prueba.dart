//HOME_TEMP.DART

/**
class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes widgets'),
      ),
      body: ListView(children: _crearItems(context)),
    );
  }

  List<Widget> _crearItems(BuildContext context) {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo ' + opt),
        leading: Icon(Icons.account_box),
        trailing: Icon(Icons.keyboard_arrow_right_rounded),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopUpDialog(context, opt),
          );
        },
      );
      lista..add(tempWidget)..add(Divider());
      // lista.add(tempWidget);
      // lista.add(Divider());
    }
    return lista;
  }

  Widget _buildPopUpDialog(BuildContext context, String opt) {
    return new AlertDialog(
      title: const Text('Me diste click'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hola soy la opcion ' + opt),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}




//HOME_TEMP.DART2
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

*/
