import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/register_screen.dart';
import 'package:tictic_infor/widgets/link_to_route.dart';
import 'package:tictic_infor/widgets/login_form.dart';
import 'package:tictic_infor/widgets/logo_svg_click.dart';
import 'package:tictic_infor/widgets/w_back_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey _formKey = GlobalKey<FormState>();
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WBackButton(),
              LogoSvgClick(),
              LoginForm(formKey: _formKey, mailController: mailController, passwordController: passwordController),
              LinkToRoute(
                text: 'Je n’ai pas encore de compte.',
                label: 'Créer mon compte !',
                routeName: RegisterScreen.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
