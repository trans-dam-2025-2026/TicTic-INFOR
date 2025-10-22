import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/screens/home_screen.dart';
import 'package:tictic_info/screens/login_screen.dart';
import 'package:tictic_info/styles/size.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/widgets/custom_button.dart';
import 'package:tictic_info/widgets/link_to_route_label.dart';
import 'package:tictic_info/widgets/text_input_custom.dart';
import 'package:tictic_info/widgets/text_input_password_custom.dart';
import 'package:tictic_info/widgets/w_back_button.dart';

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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: kSizeBetWeenElements,),
                WBackButton(),
                Center(
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width:
                        MediaQuery.of(context).size.width / kLogoWidthSubdiviser,
                  ),
                ),
                SizedBox(height: kSizeBetWeenElements),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextInputCustom(
                          label: 'Prénom',
                          hint: 'Ex: John',
                          controller: firstnameController,
                        ),
                        TextInputCustom(
                          label: 'Nom de famille',
                          hint: 'Ex: Doe',
                          controller: lastnameController,
                        ),
                        TextInputCustom(
                          label: 'Adresse mail',
                          hint: 'Ex: johndoe@example.com',
                          controller: emailController,
                        ),
                        TextInputCustom(
                          label: 'Adresse mail',
                          hint: 'Ex: johndoe@example.com',
                          controller: emailController,
                        ),
                        TextInputCustom(
                          label: 'Adresse mail',
                          hint: 'Ex: johndoe@example.com',
                          controller: emailController,
                        ),
                        TextInputPasswordCustom(
                          label: 'Mot de passe',
                          hint: 'Ex: *********',
                          controller: passwordController,
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
                SizedBox(height: kSizeBetWeenElements),
                LinkToRouteLabel(
                  label: 'J’ai déjà un compte.',
                    link: 'Je me connecte !',
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                ),
                SizedBox(height: kSizeBetWeenElements,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
