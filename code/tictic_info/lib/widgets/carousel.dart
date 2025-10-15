import 'package:flutter/material.dart';

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
          height: 60,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: _items.length,
            itemBuilder: (context, i) {
              return Text(_items[i]);
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
                onTap: () {
                  controller.animateToPage(i, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                },
                child: Container(
                  decoration: BoxDecoration(color: _currentIndex == i ? Colors.red :Colors.blueAccent),
                  height: 6,
                  width:
                      (MediaQuery.of(context).size.width / _items.length) -
                      18 * 2,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
