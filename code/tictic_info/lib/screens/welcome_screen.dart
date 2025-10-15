import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_info/styles/size.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width / kLogoWidthSubdiviser,
                ),
              ),
            ],
            // SVG LOGO
            // Carousel
            // Button
            // Row -> Line - Text - Line
            // Row -> Button - Button
          ),
        ),
      ),
    );
  }
}
