import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../atom_home.dart';

class Molecules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: Text('Molecules'),
          ),
          body: Container(
              child: Center(
            child: Container(
              height: 400.0,
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.network(
                        'https://atom.think-digital.in/static/media/construction.fa62068b.gif'),
                    alignment: Alignment.center,
                    width: 400,
                    height: 300,
                  ),
                  Container(
                    child: Text(
                      'We are currently working on this page',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ))),
    );
  }
}
