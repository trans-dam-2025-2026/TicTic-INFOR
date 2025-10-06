import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/images.dart';
import 'package:tictic_infor/styles/spacings.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontalL),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'Prénom *',
                        labelStyle: TextStyle(
                          fontSize: kDefaultFontSize
                        ),
                        hintText: 'Ex: Marc',
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: kWhiteColor,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ]),
                ),
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
