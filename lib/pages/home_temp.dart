import 'package:flutter/material.dart';
import 'home_temp2.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          title: Text('Hugo Alan Castillo González '),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true),
      body: ListView(
        children: _crearItems(context),
      ),
    );
  }

  List<Widget> _crearItems(
    BuildContext context,
  ) {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Este es el número ' + opt),
        leading: Icon(Icons.attribution_outlined),
        trailing: Icon(Icons.auto_awesome),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageTempDos(opt),
              ));
        },
      );
      lista..add(tempWidget)..add(Divider());
      //lista.add(tempWidget);
      //lista.add(Divider());
    }
    return lista;
  }
}
