import 'package:flutter/material.dart';
import 'package:fly_explorer/feature/welcome/view/welcome_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fly Explorer',
      home: WelcomeView(),

    );
  }
}