import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rive_animation/constant.dart';
import 'package:rive_animation/views/login1.dart';
import 'package:toast/toast.dart';

class drawer1 extends StatefulWidget {
  const drawer1({Key? key}) : super(key: key);

  @override
  State<drawer1> createState() => _drawer1State();
}

class _drawer1State extends State<drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(constant.name),
                accountEmail: Text(constant.email),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(constant.img),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.viewfinder_circle_fill,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              title: Text(
                "Explore",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              title: Text(
                "Favorites",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.briefcase,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                "Services",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
              },
              title: Text(
                "Messages",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onTap: () {
                Fluttertoast.showToast(msg: "hii user");
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.square_arrow_right_fill,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}