import 'package:flutter/material.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/spacings.dart';
import 'package:tictic_infor/styles/texts.dart';

class LinkToRoute extends StatelessWidget {
  final String text;
  final String label;
  final String routeName;

  const LinkToRoute({
    super.key,
    required this.text,
    required this.label,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kLinkToTextSpaceTop),
      child: Column(
        children: [
          Text(text, style: kLinkToTextLabel,),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            },
            child: Text(label, style: kLinkToTextLink,),
          ),
        ],
      ),
    );
  }
}
