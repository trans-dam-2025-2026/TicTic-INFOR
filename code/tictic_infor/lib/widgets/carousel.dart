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
          height: 60,
          child: PageView.builder(
            itemCount: _carousels.length,
            controller: controller,
            itemBuilder: (context, i) {
              return Text(
                _carousels[i],
                style: TextStyle(color: Color.fromRGBO(53, 78, 65, 1)),
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
          children: [
            for (int i = 0; i < _carousels.length; i++)
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 3,
                  width:
                      (MediaQuery.of(context).size.width / _carousels.length) -
                      16,
                  color: Color.fromRGBO(53, 78, 65, 1),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

//
