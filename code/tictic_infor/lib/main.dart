import 'package:flutter/material.dart';
import 'package:tictic_infor/router/router.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: router,
      initialRoute: WelcomeScreen.routeName,
    );
  }
}


