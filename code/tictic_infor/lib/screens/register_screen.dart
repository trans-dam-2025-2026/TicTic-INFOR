import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/l10n/app_localizations.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/styles/images.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/widgets/main_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('Return'),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset(
                        'assets/icons/logo.svg',
                        width:
                            MediaQuery.of(context).size.width *
                            kLogoRatioPercentage,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kHorizontalPadding),
                      child: TextFormField(
                        controller: firstnameController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: AppLocalizations.of(
                            context,
                          )!.firstnameLabel,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kHorizontalPadding),
                      child: TextFormField(
                        controller: lastnameController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: AppLocalizations.of(
                            context,
                          )!.lastnameLabel,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kHorizontalPadding),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: AppLocalizations.of(context)!.mailLabel,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kHorizontalPadding),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: AppLocalizations.of(
                            context,
                          )!.passwordLabel,
                        ),
                      ),
                    ),
                    MainButton(
                      onTap: () async {
                        try {
                          String email = emailController.text;
                          String password = passwordController.text;
                          String firstname = firstnameController.text;
                          String lastname = lastnameController.text;

                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                email: email,
                                password: password,
                              )
                              .then((authResult) async {
                                Navigator.pushNamed(context, HomeScreen.routeName,);
                              });
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            SnackBar(content: Text('Mot de passe trop faible'),);
                          } else if (e.code == 'email-already-in-use') {
                            SnackBar(content: Text('Ce compte existe déjà pour cette adresse e-mail'),);
                          } else {
                            SnackBar(content: Text('Erreur lors de la création de l\'utilisateur : $e'),);
                          }
                        }
                      },
                      label: AppLocalizations.of(context)!.register,
                      status: 'main',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
