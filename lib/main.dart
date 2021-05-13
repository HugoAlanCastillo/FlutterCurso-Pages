import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/src/pages/home_page.dart';
import 'package:flutter_application_widgets/src/pages/alert_page.dart';
import 'package:flutter_application_widgets/src/pages/avatar_page.dart';
import 'package:flutter_application_widgets/src/pages/card_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'avatar': (BuildContext context) => AvatarPage(),
        'alert': (BuildContext context) => AlertPage(),
        'card': (BuildContext context) => CardPage(),
      },
      initialRoute: '/alert',
    );
  }
}
