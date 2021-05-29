import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          title: Text('AvatarPage'),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true),
      body: (ListView(
        children: [
          Container(
            child: ListTile(
              title: Text('Avatar Circular'),
              leading: Icon(
                Icons.account_circle,
                color: Colors.lightBlueAccent,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('avatar/circular');
              },
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Avatar circular con borde'),
              leading: Icon(
                Icons.account_circle,
                color: Colors.lightBlueAccent,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('avatar/circularBorde');
              },
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Avatar rectangulo'),
              leading: Icon(
                Icons.account_circle,
                color: Colors.lightBlueAccent,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('avatar/rectangulo');
              },
            ),
          ),
          Container(
            child: ListTile(
              title: Text('Avatar rectangular con borde'),
              leading: Icon(
                Icons.account_circle,
                color: Colors.lightBlueAccent,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('avatar/rectanguloBorde');
              },
            ),
          ),
        ],
      )),
    );
  }
}
