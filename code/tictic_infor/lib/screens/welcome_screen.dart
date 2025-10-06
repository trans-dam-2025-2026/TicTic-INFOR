import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/screens/register_screen.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/images.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/styles/texts.dart';
import 'package:tictic_infor/widgets/main_button.dart';
import 'package:tictic_infor/widgets/carousel.dart';
import 'package:tictic_infor/widgets/line.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        // Pour initier le fond
        decoration: BoxDecoration(
          // Pour mettre un fond type couleur ou autre
          image: DecorationImage(
            // Pour mettre une image
            image: AssetImage('assets/images/back1.png'), // Le chemin de l'image
            fit: BoxFit.cover, // La façon dont l'image doit fit dans l'écran
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: MediaQuery.of(context).size.width * kLogoRatioPercentage,
              ),
            ),
            Spacer(),
            Carousel(),
            Spacer(),
            MainButton(
              onTap: () => {
                //Navigator.pushNamed(context, HomeScreen.routeName)
              },
              label: 'Continuer sans compte',
              status: 'main',
            ),
            Line(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButton(
                    onTap: () => {
                      Navigator.pushNamed(context, LoginScreen.routeName)
                    },
                    label: 'Se connecter',
                    status: 'secondary',
                  ),
                  SizedBox(width: 24,),
                  MainButton(
                    onTap: () => {
                      Navigator.pushNamed(context, RegisterScreen.routeName)
                    },
                    label: 'Créer un compte',
                    status: 'secondary',
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}