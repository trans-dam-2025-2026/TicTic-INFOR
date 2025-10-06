import 'package:flutter/material.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/others.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/styles/spacings.dart';


class WBackButton extends StatelessWidget {
  const WBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPaddingHorizontal),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: kSecondaryButtonColor, width: kWidth),
              borderRadius: BorderRadius.circular(kBorderRadiusValue),
              boxShadow: [kShadow],
              color: kWhiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(kPaddingBackButton),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}
