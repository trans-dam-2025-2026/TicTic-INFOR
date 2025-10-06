import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/widgets/main_button.dart';

import 'password_input.dart';
import 'text_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required GlobalKey<State<StatefulWidget>> formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.mailController,
    required this.passwordController,
  }) : _formKey = formKey;

  final GlobalKey<State<StatefulWidget>> _formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController mailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontalL),
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
            Align(
              alignment: Alignment.centerRight,
              child: MainButton(
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                label: 'Créer mon compte',
                status: 'main',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
