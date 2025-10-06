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
    '4. En toute simplicité, l’harmonie financière dans vos groupes !'
  ];

  final PageController controller = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: _carousels.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(_carousels[i], textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(52, 78, 65, 1),
                    fontSize: 18,
                    fontFamily: 'Avenir',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
                ),),
              );
            },
            onPageChanged: (i) {
              setState(() {
                _currentIndex = i;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: i == _currentIndex ? Color.fromRGBO(53, 78, 65, 1) : Color.fromRGBO(243, 239, 228, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.16),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 6,), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 3,
                      width: (MediaQuery.of(context).size.width / _carousels.length) - 16 * 2,
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