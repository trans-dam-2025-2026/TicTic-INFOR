import 'package:flutter/material.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/others.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/styles/texts.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;

  const TextInput({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kVerticalPadding),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: kLinkToTextLabel,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusValue)
          ),
          filled: true,
          fillColor: kWhiteColor,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
