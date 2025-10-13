import 'package:flutter/cupertino.dart';
import 'package:tictic_infor/styles/colors.dart';

const kBaseFontSize = 16.0;
const kLinkToTextLabel = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: kMainColor,
  fontFamily: 'Avenir',
);
const kLinkToTextLink = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: kMainColor,
  fontStyle: FontStyle.italic,
  fontFamily: 'Avenir',
  decoration: TextDecoration.underline,
);

const TextStyle kCarouselText = TextStyle(
  fontSize: kBaseFontSize,
  fontStyle: FontStyle.italic,
  color: kMainColor,
);

const TextStyle kMainButtonText = TextStyle(
  color: kWhiteColor,
  fontSize: 18,
  fontFamily: 'Avenir',
  fontWeight: FontWeight.w500,
);

const TextStyle kSecondaryButtonText = TextStyle(
  color: kMainButtonColor,
  fontSize: 18,
  fontFamily: 'Avenir',
  fontWeight: FontWeight.w500,
);