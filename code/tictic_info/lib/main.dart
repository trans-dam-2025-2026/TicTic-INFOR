import 'package:flutter/material.dart';
import 'package:tictic_info/routes/router.dart';
import 'package:tictic_info/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tictic INFOR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
      ),
      routes: router,
      initialRoute: '/',
    );
  }
}
