import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final _carousels = [
    '1. L’harmonie financière dans vos groupes, en toute simplicité !',
    '2. En toute simplicité, l’harmonie financière dans vos groupes !',
    '3. L’harmonie financière dans vos groupes, en toute simplicité !',
    '4. En toute simplicité, l’harmonie financière dans vos groupes !',
  ];

  final PageController controller = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60, // à modifier
          child: PageView.builder(
            controller: controller,
            itemCount: _carousels.length,
            itemBuilder: (context, i) {
              return Text(_carousels[i]);
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: _currentIndex == i
                          ? Color.fromRGBO(53, 78, 65, 1)
                          : Color.fromRGBO(243, 239, 228, 1), // à modifier
                      height: 3, // à modifier
                      width:
                          (MediaQuery.of(context).size.width /
                              _carousels.length) -
                          (16 * 2), // à modifier
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
