import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fly_explorer/feature/welcome/view/welcome_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/translations/',
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),
      title: 'Fly Explorer',
      home: const WelcomeView(),
    );
  }
}
