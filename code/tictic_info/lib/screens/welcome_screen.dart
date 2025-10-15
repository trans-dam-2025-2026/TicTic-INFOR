import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_info/styles/size.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset('assets/icons/logo.svg', width: MediaQuery.of(context).size.width / kLogoWidthSubdiviser,)
        ],
        // SVG LOGO
        // Carousel
        // Button
        // Row -> Line - Text - Line
        // Row -> Button - Button
      ),
    );
  }
}
