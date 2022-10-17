import 'package:flutter/material.dart';

import 'package:res_dash/components.dart';

void main() => runApp(const ResDashApp());

class ResDashApp extends StatelessWidget {
  const ResDashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Dashboard UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    );
    // return DrawerWidget();
    // return ListViewWidget();
    // return GridViewWidget();
  }
}
