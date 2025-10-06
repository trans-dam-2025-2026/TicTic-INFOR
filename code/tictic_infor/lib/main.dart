import 'package:flutter/material.dart';
import 'package:tictic_infor/routes/router.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';
import 'package:tictic_infor/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
      ),
      routes: router,
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
