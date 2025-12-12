import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/size.dart';
import 'package:tictic_info/styles/spacings.dart';
import 'package:tictic_info/styles/texts.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // déclarer un tableu
  final _items = ['Test 1', 'Test 2', 'Test 3', 'Test 4'];

  // déclarer le controller
  final PageController controller = PageController();

  // déclarer index actuel
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kCarouselHeight,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: _items.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPaddingL,
                ),
                child: Center(child: Text(_items[i], style: kTextCarousel)),
              );
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < _items.length; i++)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  controller.animateToPage(
                    i,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _currentIndex == i ? kActiveLine : kInactiveLine,
                    ),
                    height: kCarouselLineHeight,
                    width:
                        (MediaQuery.of(context).size.width / _items.length) -
                        kHorizontalPadding * 2,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
