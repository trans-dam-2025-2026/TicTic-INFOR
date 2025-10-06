import 'package:flutter/material.dart';
import 'package:tictic_infor/widgets/carousel.dart';
import 'package:tictic_infor/widgets/logo_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [LogoWelcome(), Carousel()]),
      ),
    );
  }
}
