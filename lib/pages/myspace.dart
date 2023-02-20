import 'package:atom_td/atom_home.dart';
import 'package:flutter/material.dart';

class MySpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('My Space'),
      ),
    );
  }
}
