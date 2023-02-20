import 'package:flutter/material.dart';

import '../atom_home.dart';

class Molecules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Molecules'),
      ),
    );
  }
}
