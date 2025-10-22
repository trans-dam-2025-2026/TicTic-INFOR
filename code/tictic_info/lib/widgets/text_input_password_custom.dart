import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/others.dart';
import 'package:tictic_info/styles/spacings.dart';

class TextInputPasswordCustom extends StatefulWidget {
  const TextInputPasswordCustom({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
  });

  final TextEditingController controller;
  final String label;
  final String hint;

  @override
  State<TextInputPasswordCustom> createState() =>
      _TextInputPasswordCustomState();
}

class _TextInputPasswordCustomState extends State<TextInputPasswordCustom> {
  static bool passwordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kVerticalPadding),
      child: TextFormField(
        controller: widget.controller,
        obscureText: passwordNotVisible,
        validator: (String? value) {},
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            fontSize: 24,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
          hintText: widget.hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
          ),
          filled: true,
          fillColor: kWhiteColor,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordNotVisible = !passwordNotVisible;
              });
            },
            icon: Icon(
              passwordNotVisible ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
      ),
    );
  }
}