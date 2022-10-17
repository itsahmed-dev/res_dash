import 'package:flutter/material.dart';

var background = Colors.grey[300];

var appBar = AppBar(backgroundColor: Colors.grey[900]);

adaptiveAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.grey[900],
    title: Text(title),
    centerTitle: true,
  );
}

var drawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(Icons.favorite),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text('DASHBOARD'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.chat,
        ),
        title: Text('MESSAGES'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
        ),
        title: Text('SETTINGS'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.logout,
        ),
        title: Text('LOGOUT'),
        onTap: () {},
      ),
    ],
  ),
);

var gridBox = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    color: Colors.grey,
  ),
);

var gridTile = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    height: 50,
    color: Colors.grey[400],
  ),
);
