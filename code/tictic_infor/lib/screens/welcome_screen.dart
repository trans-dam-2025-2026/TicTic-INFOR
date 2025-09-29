import 'package:flutter/material.dart';
import 'package:tictic_infor/widgets/carousel.dart';
import 'package:tictic_infor/widgets/logo_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LogoWelcome(),
          Carousel(),
        ],
      ),
    );
  }
}

