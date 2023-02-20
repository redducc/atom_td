import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('accountName'),
            accountEmail: Text('accountEmail'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('My Space'),
            onTap: () => print('My space'),
          )
        ],
      ),
    );
  }
}

class AtomHome extends StatefulWidget {
  const AtomHome({super.key});

  @override
  State<AtomHome> createState() => _AtomHomeState();
}

class _AtomHomeState extends State<AtomHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Sidebar'),
      ),
      body: Center(),
    );
  }
}
