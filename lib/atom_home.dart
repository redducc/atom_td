import 'package:atom_td/pages/electrons.dart';
import 'package:atom_td/pages/molecules.dart';
import 'package:atom_td/pages/myspace.dart';
import 'package:atom_td/pages/nucleus.dart';
import 'package:atom_td/pages/planets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 29, 150, 194),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 29, 150, 194),
              ),
              accountName: Text('username'),
              accountEmail: Text('useremail@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/47023834?s=200&v=4',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                'My Space',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MySpace()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.monitor,
                color: Colors.white,
              ),
              title: const Text(
                'Molecules',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Molecules()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contacts,
                color: Colors.white,
              ),
              title: const Text(
                'Electrons',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Electrons()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: const Text(
                'Nucleus',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Nucleus()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.star_outline_rounded,
                color: Colors.white,
              ),
              title: const Text(
                'Planets',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Planets()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.gamepad,
                color: Colors.white,
              ),
              title: const Text(
                'Fork',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                const url = 'https://github.com/td-locus';
                launchURL(url);
              },
            ),
          ],
        ),
      ),
    );
  }
}

launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
