import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets')
          // SVG
          // Carousel ou le slider
          // Button
          // Row(Ligne + texte + ligne)
          // Row(Button, Button)
        ],
      ),
    );
  }
}
