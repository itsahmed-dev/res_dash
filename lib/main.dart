import 'package:flutter/material.dart';

void main() => runApp(const ResDashApp());

class ResDashApp extends StatelessWidget {
  const ResDashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Dashboard UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
