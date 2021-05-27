import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFC5C1C1),
        appBar: AppBar(
          title: Text('Cards'),
        ),

        //En el body usaremos el widget "ListView" para que el cuerpo sea en forma de lista
        body: ListView(
          //Lista de Widget. Creamos objetos dentro de un array para usarlo en el widget Card().
          //Recordemos que la propiedad "children: <Widget>" debe tener un array y dentro de el los widget que se van a mostrar
          children: <Widget>[
            card1(),
            card2(),
            card3(),
            card4(context),
            card5(),
          ],
        ));
  }

  Card card1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
  }

  Card card2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      borderOnForeground: (true),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFF9CCC65),
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'data:image/jpeg;base64,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'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text('Montañas'),
          ),
        ],
      ),
    );
  }

  Card card3() {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            Image.asset('assets/ejemplo.jpg'),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Ejemplo"),
            )
          ],
        ));
  }

  Card card4(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6377A),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Card'),
            subtitle: Text(
                'Es un widget que nos proporciona el aspecto visual de una tarjeta.'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    _showDialog(context);
                  },
                  child: Text('Aceptar')),
              FlatButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  child: Text('Regresar'))
            ],
          )
        ],
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Hola'),
            content: Text('Bienvenido'),
            actions: <Widget>[
              FlatButton(
                  child: Text('salir'),
                  onPressed: () {
                    Navigator.of(context).pop('ok');
                  })
            ]);
      });
}

Card card5() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 20),
          title: Text('NUEVO MENSAJE'),
          subtitle: Text('APROVECHA LAS OFERTAS DEL HOT SALE DE AMAZON.'),
          leading: Icon(Icons.home),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
                onPressed: () => {launch('https://www.amazon.com.mx')},
                child: Text('Abrir link'))
          ],
        )
      ],
    ),
  );
}
