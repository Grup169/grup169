import 'package:flutter/material.dart';
import 'package:goz_ardi/Screens/welcome_secreen.dart';
import 'package:goz_ardi/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Göz Ardı',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: const WelcomeScreen(),
    );
  }
}


