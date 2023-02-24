import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:atom/styles/loginPageStyle.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: _mediaQuery.size.height * 1,
              decoration: BoxDecoration(gradient: ScaffoldColor),
              child: Column(
                children: [
                  SizedBox(
                    height: _mediaQuery.size.height * 0.35,
                    child: const Center(
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/TD-Logo.jpg",
                          ),
                          radius: 70),
                    ),
                  ),
                  Container(
                    height: _mediaQuery.size.height * 0.65,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        eMailField(),
                        passwordField(),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Already have an accout? Sign in."),
                        ),
                        SignInButton(
                          Buttons.Google,
                          text: "Sign up with Google",
                          onPressed: () {
			     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MySpace()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
