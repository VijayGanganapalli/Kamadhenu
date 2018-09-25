import 'package:flutter/material.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text("VG"),
            ),
            accountName: Text(
              "Vijay Kumar",
              style: TextStyle(fontSize: 18.0),
            ),
            accountEmail: Text("vijayganganapalli@gmail.com"),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Text("V"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
