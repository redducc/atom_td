import 'package:flutter/material.dart';

import '../atom_home.dart';

class Planets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Planets'),
      ),
    );
  }
}
