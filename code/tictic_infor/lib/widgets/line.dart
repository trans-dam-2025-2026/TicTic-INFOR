import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/sizes.dart';
import '../styles/spacings.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPaddingL, vertical: kVerticalPaddingLMid),
      child: Row(
        children: [
          Flexible(child: Container(height: kWidth/2, color: kMainButtonColor,)),
          const SizedBox(width: kSmallSpace,),
          const Text('Où'),
          const SizedBox(width: kSmallSpace,),
          Flexible(child: Container(height: kWidth/2, color: kMainButtonColor,)),
        ],
      ),
    );
  }
}