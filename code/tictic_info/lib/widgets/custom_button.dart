import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/others.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/styles/texts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.label,
    this.isPrimary = true,
  });

  final GestureTapCallback? onTap;
  final String label;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          color: isPrimary ? kMainColor : kSecondaryButton,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(kHorizontalPadding),
          child: Text(label, style: kButtonText),
        ),
      ),
    );
  }
}
