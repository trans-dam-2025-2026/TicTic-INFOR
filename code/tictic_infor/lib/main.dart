import 'package:flutter/material.dart';
import 'package:tictic_infor/router/router.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/onboarding/onboarding_first_screen.dart';
import 'screens/onboarding/onboarding_second_screen.dart';
import 'screens/onboarding/onboarding_third_screen.dart';
import 'screens/register_screen.dart';

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


