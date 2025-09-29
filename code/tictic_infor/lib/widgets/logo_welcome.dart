import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWelcome extends StatelessWidget {
  const LogoWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/icons/logo.svg',
        width: MediaQuery.of(context).size.width / 3,
      ),
    );
  }
}
