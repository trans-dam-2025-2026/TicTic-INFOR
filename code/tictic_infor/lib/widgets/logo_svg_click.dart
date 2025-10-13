import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';
import 'package:tictic_infor/styles/images.dart';

class LogoSvgClick extends StatelessWidget {
  const LogoSvgClick({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, WelcomeScreen.routeName);
      },
      child: Align(
        alignment: Alignment.topCenter,
        child: SvgPicture.asset(
          'assets/icons/logo.svg',
          width: MediaQuery.of(context).size.width * kLogoRatioPercentage,
        ),
      ),
    );
  }
}