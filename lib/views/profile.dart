import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive_animation/constant.dart';
import 'package:rive_animation/drawer.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer1(),
        appBar: AppBar(title: Text("User Login")),
        body: Scaffold(
          body: SafeArea(
              child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundImage: NetworkImage(constant.image),
              ),
              Text(constant.name),
              Text(constant.email),
            ]),
          )),
        ));
  }
}