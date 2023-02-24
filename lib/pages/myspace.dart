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
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(child: ProfileCardWidget()),
            Expanded(child: TasksCardWidget())
          ],
        ),
      ),
    );
  }
}

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 300,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: Color.fromRGBO(208, 218, 221, 1),
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.view_column),
                  title: Text('View Profile'),
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/80753594?v=4'),
                ),
                Text(
                  'Sushmit',
                  style: TextStyle(fontSize: 40),
                ),
                Text('sushmit718')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TasksCardWidget extends StatelessWidget {
  const TasksCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 300,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: Color.fromRGBO(208, 218, 221, 1),
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Text('View Tasks'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
