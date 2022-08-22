import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../services/auth.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body:  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,children: [
          SignInButton(Buttons.Google, onPressed: (){
            signinWithGoogle();
          })
      ],
      )),
    );
  }
}