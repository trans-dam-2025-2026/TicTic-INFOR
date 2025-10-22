import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/others.dart';
import 'package:tictic_info/styles/spacings.dart';

class TextInputCustom extends StatelessWidget {
  const TextInputCustom({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
  });

  final TextEditingController controller;
  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kVerticalPadding),
      child: TextFormField(
        controller: controller,
        validator: (String? value) {},
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 24,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
          ),
          filled: true,
          fillColor: kWhiteColor,
        ),
      ),
    );
  }
}
