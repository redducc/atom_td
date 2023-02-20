import 'package:atom_td/pages/myspace.dart';
import 'package:flutter/material.dart';

import 'atom_home.dart';
import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() => runApp(new atom());

class atom extends StatelessWidget {
  const atom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atom",
      home: MySpace(),
    );
  }
}
