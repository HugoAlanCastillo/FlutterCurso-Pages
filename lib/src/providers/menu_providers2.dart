import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _AlertDialog {
  List<dynamic> alertas = [];
  _AlertDialog() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts2.json');
    Map dataMap = json.decode(resp);
    //print(dataMap);
    print(dataMap['rutas']);
    alertas = dataMap['rutas'];
    return alertas;
  }
}

final alertDialog = new _AlertDialog();
