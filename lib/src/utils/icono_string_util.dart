import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'notifications_active': Icons.notifications_active,
  'run_circle': Icons.run_circle,
  'folder_shared_sharp': Icons.folder_shared_sharp,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.indigo);
}
