import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/widgets/carousel.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: MediaQuery.of(context).size.width / kLogoWelcomeWidth,
            ),
          ),
          Carousel(),
          // Carousel ou le slider
          // Button
          // Row(Ligne + texte + ligne)
          // Row(Button, Button)
        ],
      ),
    );
  }
}
