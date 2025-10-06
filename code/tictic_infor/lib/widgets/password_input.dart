import 'package:flutter/material.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/spacings.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInput({
    super.key,
    required this.controller,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  static bool passwordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kVerticalPadding),
      child: TextFormField(
        controller: widget.controller,
        obscureText: passwordNotVisible,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            labelText: 'Mot de passe *',
            labelStyle: TextStyle(
                fontSize: kDefaultFontSize
            ),
            hintText: '***********',
            border: const OutlineInputBorder(),
            filled: true,
            fillColor: kWhiteColor,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordNotVisible = !passwordNotVisible;
                  });
                },
                icon: Icon(passwordNotVisible ? Icons.visibility_off : Icons.visibility)
            )
        ),
      ),
    );
  }
}
