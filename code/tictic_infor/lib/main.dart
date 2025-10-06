import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/screens/register_screen.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => WelcomeScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/register': (BuildContext context) => RegisterScreen(),
      },
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
