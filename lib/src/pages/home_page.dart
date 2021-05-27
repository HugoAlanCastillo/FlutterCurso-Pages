import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_widgets/src/providers/menu_providers.dart';
import 'package:flutter_application_widgets/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          title: Text('Cards | Equipo 3'),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true),
      body: _list(context),
    );
  }

  Widget _list(BuildContext context) {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listI(snapshot.data, context),
          );
        });
  }

  List<Widget> _listI(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((otp) {
      final widgetTemp = ListTile(
        title: Text(otp['texto']),
        leading: getIcon(otp['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right_sharp,
          color: Colors.indigo,
        ),
        onTap: () {
          // showDi.alog(
          //    context: context,
          //  builder: (BuildContext context) => _dialog(context, otp['texto']),
          //);

          /*    final route = MaterialPageRoute(
            builder: (context) => AlertPage());
          Navigator.push(context, route);

           */
/*
          Navigator.of(context)
              .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
            return new AvatarPage();
          }));
          */
          Navigator.pushNamed(context, otp['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }

  Widget _dialog(BuildContext context, String otp) {
    return new AlertDialog(
      title: Text('Ventana de: ' + otp),
      backgroundColor: Colors.blueGrey[100],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '¡Hola!',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}
