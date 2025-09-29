import 'package:flutter/material.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/paddings.dart';
import 'package:tictic_infor/styles/sizes.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final _carousels = ["Texte 1", "Texte 2", "Texte 3", "Texte 4"];

  final PageController controller = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kCarouselHeight,
          child: PageView.builder(
            controller: controller,
            itemCount: _carousels.length,
            itemBuilder: (context, i) {
              return Center(child: Text(_carousels[i]));
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Row(
          children: [
            for (int i = 0; i < _carousels.length; i++)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  controller.animateToPage(
                    i,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(kHorizontalPadding),
                  child: Container(
                    color: i == _currentIndex ? kActiveColorCarousel : kInactiveColorCarousel,
                    height: kCarouselLineHeight,
                    width: (MediaQuery.of(context).size.width / _carousels.length) - kHorizontalPadding * 2,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
