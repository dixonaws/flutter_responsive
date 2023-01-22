import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var myDefaultBackground = Colors.grey[200];
var myDrawer = Drawer(
  backgroundColor: Colors.grey[200],
  child: Column(
    children: const [
      ListTile(),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),

      ),
      ListTile(
        leading: FaIcon(FontAwesomeIcons.database, size: 20),
        title: Text('Data'),
      ),
      ListTile(
        leading: FaIcon(FontAwesomeIcons.locationCrosshairs, size: 20),
        title: Text('Location'),
      ),
      ListTile(
        leading: FaIcon(FontAwesomeIcons.book, size: 20),
        title: Text('Support'),
      ),
    ],
  ),
);
var myAppBar =
    AppBar(title: Text('Mobile Version'), backgroundColor: Colors.grey[900]);

AppBar getMyAppBr(String title, context) {
  return AppBar(
      title: Text(title),
      backgroundColor: Colors.grey[900],
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.gears, size: 20),
            onPressed: () {
              print('Tools button clicked');
            },
          ),
        ), // Tools icon
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.bell, size: 20),
            onPressed: () {
              print('Notifications button clicked');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: IconButton(
              icon: Icon(Icons.account_circle_outlined),
              onPressed: () {
                print('Account button clicked');
              }),
        ), // Account icon
        Padding(
          padding: const EdgeInsets.only(top: 0, left: 0, right: 40),
          child: TextButton(
            onPressed: () {},
            child: const Text('jpdixon@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 14)),
          ), // notifications icon
        ), // Account icon
      ]);
}
