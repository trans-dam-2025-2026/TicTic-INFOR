import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/widgets/carousel.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/back1.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: MediaQuery.of(context).size.width / kLogoWelcomeWidth,
              ),
            ),
            Carousel(),
            // Button
            // Row(Ligne + texte + ligne)
            // Row(Button, Button)
          ],
        ),
      ),
    );
  }
}
