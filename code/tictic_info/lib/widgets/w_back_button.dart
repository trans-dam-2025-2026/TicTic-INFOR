import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/others.dart';
import 'package:tictic_info/styles/spacings.dart';

class WBackButton extends StatelessWidget {
  const WBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kHorizontalPadding),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(kBorderRadius),
                border: Border.all(width:kBorderWidth, color: kMainColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(kHorizontalPadding),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    );
  }
}
