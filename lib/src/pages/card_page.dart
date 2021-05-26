import 'package:flutter/material.dart';

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
            card4(),
            card5(),
            card6(),
            card7(),
            card8(),
            card9(),
          ],
        ));
  }

  //Widget Card()
  Card card1() {
    //Retornamos el Widget para comenzar a modificar la forma de
    return Card(
      //shape: RoundedRectangleBorder = esquinas circulares
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      //margin: EdgeInsets = es el margen de la cards entre un wigth y los bordes
      margin: EdgeInsets.all(15),
      //elevation: son las sombras o elevación del la card
      elevation: 10,
      // child = es la propiedad que anida un widget en su interior
      child: Column(
        children: <Widget>[
          // ListTitle = nos servira para ordenar toda la informacion dentro de la card
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
            leading: Icon(Icons.home),
          ),
          //Row = organiza los Botones
          Row(
            //mainAxisAlignment = Alinea los botones horizontal
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Text('Aceptar')),
              FlatButton(onPressed: () => {}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }

  Widget card2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Montañas'),
          ),
        ],
      ),
    );
  }

  Card card3() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          //FadeInImage = para que se visualice la imagen al momento de cargar
          FadeInImage(
            image: NetworkImage(
                'https://staticuestudio.blob.core.windows.net/buhomag/2016/03/01195417/pexels-com.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fit: BoxFit.cover,
            height: 260,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Paisaje'),
          )
        ],
      ),
    );
  }

  Card card4() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Text('Aceptar')),
              FlatButton(onPressed: () => {}, child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );
  }

  Card card5() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          ),
        ],
      ),
    );
  }

  Card card6() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          ),
        ],
      ),
    );
  }

  Card card7() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          ),
        ],
      ),
    );
  }

  Card card8() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          ),
        ],
      ),
    );
  }

  Card card9() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFFE6EE9C),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          ),
        ],
      ),
    );
  }
}
