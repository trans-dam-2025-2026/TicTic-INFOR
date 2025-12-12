import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/others.dart';
import 'package:tictic_info/styles/size.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/styles/texts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.status,
  });

  final GestureTapCallback onTap;
  final String label;
  final String status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: kVerticalPaddingXS,
          horizontal: kVerticalPaddingXS,
        ),
        decoration: BoxDecoration(
          color: status == 'main' ? kMainButtonColor : kSecondaryButtonColor,
          border: Border.all(width: kWidth*2, color: status == 'main' ? kMainButtonColor : kSecondaryButtonColor),
          borderRadius: BorderRadius.circular(kBorderRadiusValue),
          boxShadow: [kShadow],
        ),
        child: Text(label, style: status == 'main' ? kMainButtonText : kSecondaryButtonText ,),
      ),
    );
  }
}