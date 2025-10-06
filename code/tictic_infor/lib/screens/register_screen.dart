import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/images.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/widgets/main_button.dart';
import 'package:tictic_infor/widgets/password_input.dart';
import 'package:tictic_infor/widgets/text_input.dart';

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
              Padding(
                padding: const EdgeInsets.all(kPaddingHorizontal),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: kWhiteColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kHorizontalPadding),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width:
                      MediaQuery.of(context).size.width * kLogoRatioPercentage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPaddingHorizontalL,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextInput(
                        controller: firstNameController,
                        labelText: 'Prénom *',
                        hintText: 'Ex: Marc',
                      ),
                      TextInput(
                        controller: lastNameController,
                        labelText: 'Nom *',
                        hintText: 'Ex: Caillou',
                      ),
                      TextInput(
                        controller: mailController,
                        labelText: 'Adresse mail *',
                        hintText: 'Ex: johndoe@example.com',
                      ),
                      PasswordInput(controller: passwordController),
                      MainButton(
                        onTap: () {
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        label: 'S’inscrire',
                        status: 'main',
                      ),
                    ],
                  ),
                ),
              ),

              Text('J’ai déjà un compte.'),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: Text('Je me connecte'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
