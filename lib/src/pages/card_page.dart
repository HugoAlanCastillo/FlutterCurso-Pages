import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF455A64),
        appBar: AppBar(
          title: Text('Cards'),
        ),

        //En el body usaremos el widget "ListView" para que el cuerpo sea en forma de lista
        body: ListView(
          //Lista de Widget. Creamos objetos dentro de un array para usarlo en el widget Card().
          //Recordemos que la propiedad "children: <Widget>" debe tener un array y dentro de el los widget u objetos que se van a mostrar
          children: <Widget>[
            card1(),
            card2(),
            card3(),
            card5(),
            card4(context),
          ],
        ));
  }

  Card card1() {
    return Card(
      color: Color(0xFFCFD8DC),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 10),
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
      margin: EdgeInsets.all(15),
      elevation: 50,
      color: Color(0xFF9CCC65),
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://www.ambientum.com/wp-content/uploads/2019/10/montanas-atardecer-696x464.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text(' Imagen por URL | Montañas'),
          ),
        ],
      ),
    );
  }

  Card card3() {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        margin: EdgeInsets.all(25),
        elevation: 10,
        color: Color(0xFFB3E5FC),
        child: Column(
          children: <Widget>[
            Image.asset('assets/ejemplo.jpg'),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Imagen por Assets | Montañas"),
            )
          ],
        ));
  }

  Card card5() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(19),
      elevation: 50,
      color: Color(0xFFFFF3E0),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 22),
            title: Text('NUEVO MENSAJE'),
            subtitle: Text('APROVECHA LAS OFERTAS DEL HOTSALE DE AMAZON.'),
            leading: Icon(Icons.airplanemode_on),
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

  Card card4(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(30),
      elevation: 10,
      color: Color(0xFFE1BEE7),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
            title: Text('Card'),
            subtitle: Text(
                'Es un widget que nos proporciona el aspecto visual de una tarjeta.'),
            leading: Icon(Icons.drive_file_move_rounded),
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
