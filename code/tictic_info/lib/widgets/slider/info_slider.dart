import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/styles/texts.dart';

class InfoSlider extends StatelessWidget {
  const InfoSlider({super.key, required List<String> items}) : _items = items;

  final List<String> _items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/back1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kVerticalPadding),
        child: SizedBox(
          height: 105,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            itemBuilder: (context, i) {
              return Row(
                children: [
                  i == 0
                      ? const SizedBox(width: kHorizontalPadding)
                      : Container(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kHorizontalPadding,
                      vertical: kVerticalPadding,
                    ),
                    decoration: BoxDecoration(
                      color: kBackgroundColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // TODO : replace with value..
                    width: MediaQuery.of(context).size.width > 390 ? 160 : 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_items[i], style: kTextSideBar),
                        Text('${Random().nextInt(1000)}€', style: kTitleHome),
                      ],
                    ),
                  ),
                  i < _items.length
                      ? const SizedBox(width: kHorizontalPadding)
                      : Container(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}