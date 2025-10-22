import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/screens/home_screen.dart';
import 'package:tictic_info/screens/login_screen.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/others.dart';
import 'package:tictic_info/styles/size.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/styles/texts.dart';
import 'package:tictic_info/widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              SizedBox(height: 64),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: kVerticalPadding,
                        ),
                        child: TextFormField(
                          controller: firstnameController,
                          validator: (String? value) {},
                          decoration: InputDecoration(
                            labelText: 'Firstname',
                            labelStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: 'Ex: John',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(kBorderRadius),
                              ),
                            ),
                            filled: true,
                            fillColor: kWhiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: kVerticalPadding,
                        ),
                        child: TextFormField(
                          controller: lastnameController,
                          validator: (String? value) {},
                          decoration: InputDecoration(
                            labelText: 'Lastname',
                            labelStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: 'Ex: Doe',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(kBorderRadius),
                              ),
                            ),
                            filled: true,
                            fillColor: kWhiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: kVerticalPadding,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          validator: (String? value) {},
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: 'Ex: johndoe@example.com',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(kBorderRadius),
                              ),
                            ),
                            filled: true,
                            fillColor: kWhiteColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: kVerticalPadding,
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          validator: (String? value) {},
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: '***********',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(kBorderRadius),
                              ),
                            ),
                            filled: true,
                            fillColor: kWhiteColor,
                          ),
                        ),
                      ),
                      CustomButton(
                        label: 'Créer mon compte',
                        isPrimary: true,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );

                            Navigator.pushNamed(context, HomeScreen.routeName);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 64,),
              Text('J’ai déjà un compte.', style: kLinkRouteLabel,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: Text('Je me connecte !', style: kLinkRoute,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
