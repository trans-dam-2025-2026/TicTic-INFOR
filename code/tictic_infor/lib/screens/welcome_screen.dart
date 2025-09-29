import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/widgets/carousel.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
              'assets/icons/logo.svg',
              width: MediaQuery.of(context).size.width / 2,
          ),
          Carousel(),
          // Carousel ou slider
          // Button
          //
        ],
      ),
    );
  }
}
