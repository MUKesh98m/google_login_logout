import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:rive_animation/constant.dart';
import 'package:rive_animation/localdb.dart';
import 'package:rive_animation/views/profile.dart';

import '../services/auth.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  signInMethod() async {
    await signinWithGoogle();
    constant.name = (await LocaldataSaver.getName())!;
    constant.email = (await LocaldataSaver.getEmail())!;
    constant.image = (await LocaldataSaver.getImage())!;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Login")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(Buttons.Google, onPressed: () {
            signInMethod();
          })
        ],
      )),
    );
  }
}