import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/src/pages/home_page.dart';
import 'package:flutter_application_widgets/src/pages/alert_page.dart';
import 'package:flutter_application_widgets/src/pages/avatar_page.dart';
import 'package:flutter_application_widgets/src/pages/card_page.dart';
import 'package:flutter_application_widgets/src/avatars/circuleAvatar.dart';
import 'package:flutter_application_widgets/src/avatars/circuleConBorder.dart';
import 'package:flutter_application_widgets/src/avatars/regtangular.dart';
import 'package:flutter_application_widgets/src/avatars/regtangularBorde.dart';

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
        'avatar/circular': (BuildContext context) => CircularAvatar(),
        'avatar/circularBorde': (BuildContext context) => CircularBordeAvatar(),
        'avatar/rectangulo': (BuildContext context) => RectanguloAvatar(),
        'avatar/rectanguloBorde': (BuildContext context) =>
            RectanguloBordeAvatar(),
      },
      initialRoute: '/alert',
    );
  }
}
