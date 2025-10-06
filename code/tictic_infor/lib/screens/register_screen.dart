import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/styles/images.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey _formKey = GlobalKey<FormState>();

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
        child: SafeArea(
          child: Column(
            children: [
              // Button back
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width * kLogoRatioPercentage,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(children: [

                ]),
              ),
              // FORM -> TextField
              // Button -> Soumettre le form
              // Text -> Je m'inscris
            ],
          ),
        ),
      ),
    );
  }
}
