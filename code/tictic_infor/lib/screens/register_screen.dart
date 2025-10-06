import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/widgets/link_to_route.dart';
import 'package:tictic_infor/widgets/logo_svg_click.dart';
import 'package:tictic_infor/widgets/register_form.dart';
import 'package:tictic_infor/widgets/w_back_button.dart';

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
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WBackButton(),
                LogoSvgClick(),
                RegisterForm(
                  formKey: _formKey,
                  firstNameController: firstNameController,
                  lastNameController: lastNameController,
                  mailController: mailController,
                  passwordController: passwordController,
                ),
                LinkToRoute(
                  text:'J’ai déjà un compte !',
                  label: 'Je me connecte !',
                  routeName: LoginScreen.routeName,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
