import 'package:flutter/material.dart';
import 'package:fly_explorer/view/welcome/view/welcome_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const WelcomeView()
      ),
    );
  }
}
