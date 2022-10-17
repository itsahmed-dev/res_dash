import 'package:flutter/material.dart';

import 'package:res_dash/widgets/drawer_widget/components.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Text('Drawer Widget'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.looks_one_outlined),
                title: Text(
                  'P A G E x 1',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScreenOne(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.looks_two_outlined),
                title: Text(
                  'P A G E x 2',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      // endDrawer: Drawer(), // Drawer on the opposite side
    );
  }
}
