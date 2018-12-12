import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new SizedBox(
            height: 30.0,
          ),
          new ListTile(
            title: Text(
              "គ្រប់ប្រភេទ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.border_all,
              color: Colors.blue,
            ),
          ),
          new ListTile(
            title: Text(
              "ជីវិតនិងសង្គម",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.perm_identity,
              color: Colors.green,
            ),
          ),
          new ListTile(
            title: Text(
              "នយោបាយ",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.dashboard,
              color: Colors.red,
            ),
          ),
          new ListTile(
            title: Text(
              "កីឡា",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.accessibility_new,
              color: Colors.cyan,
            ),
          ),
          Divider(),
          new ListTile(
            title: Text(
              "វិទ្យាសាស្ត្រនិងបច្ចេកវិទ្យា",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            leading: Icon(
              Icons.phonelink_setup,
              color: Colors.brown,
            ),
          ),
          Divider(),
          //MyAboutTile()
        ],
      ),
    );
  }
}
