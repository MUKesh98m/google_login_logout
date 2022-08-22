// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rive_animation/constant.dart';
// import 'package:rive_animation/drawer.dart';
// import 'package:rive_animation/views/login1.dart';
//
// import '../services/auth.dart';
//
// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);
//
//   @override
//   State<homepage> createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> {
//   SignOutMethod(context) async {
//     await signOut();
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => login()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // drawer: drawer1(),
//         appBar: AppBar(title: Text("User Login")),
//         body: Scaffold(
//           body: SafeArea(
//               child: Center(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               CircleAvatar(
//                 backgroundImage: NetworkImage(constant.image),
//               ),
//               Text(constant.name),
//               Text(constant.email),
//             ]),
//           )),
//         ));
//   }
// }

import 'package:flutter/material.dart';

import 'package:rive_animation/constant.dart';
import 'package:rive_animation/views/login1.dart';
import '../services/auth.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  SignOutMethod(context) async
  {
    await signOut();
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(constant.img),),
              Text(constant.name),
              Text(constant.email),
              ElevatedButton(onPressed: () {
                SignOutMethod(context);
              }, child: Text("SIGN OUT"))
            ],
          ),
        ),
      ),
    );
  }
}