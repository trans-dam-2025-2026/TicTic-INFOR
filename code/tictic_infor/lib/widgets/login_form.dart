import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/widgets/main_button.dart';

import 'password_input.dart';
import 'text_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<State<StatefulWidget>> formKey,
    required this.mailController,
    required this.passwordController,
  }) : _formKey = formKey;

  final GlobalKey<State<StatefulWidget>> _formKey;
  final TextEditingController mailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPaddingHorizontalL,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextInput(
              controller: mailController,
              labelText: 'Adresse mail *',
              hintText: 'Ex: johndoe@example.com',
            ),
            PasswordInput(controller: passwordController),
            Align(
              alignment: Alignment.centerRight,
              child: MainButton(
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                label: 'Se connecter',
                status: 'main',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
