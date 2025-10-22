import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic_info/screens/home_screen.dart';
import 'package:tictic_info/screens/login_screen.dart';
import 'package:tictic_info/screens/register_screen.dart';
import 'package:tictic_info/styles/size.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/widgets/custom_button.dart';
import 'package:tictic_info/widgets/carousel.dart';

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
              Spacer(),
              Center(
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width / kLogoWidthSubdiviser,
                ),
              ),
              Spacer(),
              Carousel(),
              Spacer(),
              Center(
                child: CustomButton(
                  label: 'Continuer sans compte',
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomButton(
                      label: 'Se connecter',
                      isPrimary: false,
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    SizedBox(
                      width: kHorizontalPaddingL,
                    ),
                    CustomButton(
                      label: 'S’inscrire',
                      isPrimary: false,
                      onTap: () {
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                    ),
                    SizedBox(
                      width: kHorizontalPaddingL,
                    ),
                    CustomButton(
                      label: 'S’inscrire',
                      isPrimary: false,
                      onTap: () {
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),
              // Carousel
              // Button
              // Row -> Line - Text - Line
              // Row -> Button - Button
            ],
          ),
        ),
      ),
    );
  }
}
