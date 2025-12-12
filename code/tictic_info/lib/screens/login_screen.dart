import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/l10n/app_localizations.dart';
import 'package:tictic_info/screens/home_screen.dart';
import 'package:tictic_info/screens/register_screen.dart';
import 'package:tictic_info/styles/size.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/widgets/custom_button.dart';
import 'package:tictic_info/widgets/link_to_route_label.dart';
import 'package:tictic_info/widgets/text_input_custom.dart';
import 'package:tictic_info/widgets/text_input_password_custom.dart';
import 'package:tictic_info/widgets/w_back_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
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
                        label: 'Adresse mail',
                        hint: 'Ex: johndoe@example.com',
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez entrer votre mail';
                          }
                          return null;
                        },
                      ),
                      TextInputPasswordCustom(
                        label: 'Mot de passe',
                        hint: 'Ex: *********',
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez entrer votre mot de passe';
                          }
                          return null;
                        },
                      ),
                      CustomButton(
                        label: AppLocalizations.of(context)!.login,
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
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
