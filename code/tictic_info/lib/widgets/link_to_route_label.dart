import 'package:flutter/material.dart';
import 'package:tictic_info/styles/texts.dart';

class LinkToRouteLabel extends StatelessWidget {
  const LinkToRouteLabel({
    super.key,
    required this.onTap,
    required this.label,
    required this.link,
  });

  final GestureTapCallback? onTap;
  final String label;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(label, style: kLinkRouteLabel),
          Text(link, style: kLinkRoute),
        ],
      ),
    );
  }
}
