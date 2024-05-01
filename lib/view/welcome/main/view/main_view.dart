import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  final Widget body;
  const MainView({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom naviation bar
      // appbar
      // body : ViewModel.bod
      body: body,
    );
  }
}
