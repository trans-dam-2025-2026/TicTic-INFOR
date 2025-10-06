import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/register_screen.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/widgets/button.dart';
import 'package:tictic_infor/widgets/carousel.dart';
import 'package:tictic_infor/widgets/line.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width:
                    MediaQuery.of(context).size.width / 3,
                  ),
                ),
                Spacer(),
                Carousel(),
                Spacer(),
                Button(
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
                      Button(
                        onTap: () => {
                          //Navigator.pushNamed(context, LoginScreen.routeName)
                          Navigator.pop(context)
                        },
                        label: 'Se connecter',
                        status: 'secondary',
                      ),
                      SizedBox(width: kVerticalSpace,),
                      Button(
                        onTap: () => {
                          Navigator.pushNamed(context, RegisterScreen.routeName)
                        },
                        label: 'Créer un compte pour pouvoir sauvegarder nos données',
                        status: 'secondary',
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}