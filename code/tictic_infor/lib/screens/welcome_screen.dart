import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_infor/styles/colors.dart';
import 'package:tictic_infor/styles/images.dart';
import 'package:tictic_infor/styles/sizes.dart';
import 'package:tictic_infor/styles/spacings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox( // Pour initier le fond
        decoration: BoxDecoration( // Pour mettre un fond type couleur ou autre
          image: DecorationImage( // Pour mettre une image
              image: AssetImage('assets/img/back1.png'), // Le chemin de l'image
              fit: BoxFit.cover // La façon dont l'image doit fit dans l'écran
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width: MediaQuery.of(context).size.width * kLogoRatioPercentage,
              ),
            ),
            Carousel(),
            // Carousel
            // main Button
            // Line
            // ROW -> Double button
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final _items = [
    '0Gérez votre budget!',
    '1L’harmonie financière dans vos groupes, en toute simplicité !.',
    '2L’harmonie financière dans vos groupes, en toute simplicité !.',
    '3L’harmonie financière dans vos groupes, en toute simplicité !.',
  ];

  final PageController controller = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kCarouselHeight,
          child: PageView.builder(
              itemBuilder: (context, i) {
                return Text(_items[i]);
              }
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < _items.length; i++)
              Container(
                color: _currentIndex == i ? kCarouselActiveLine : kCarouselInactiveLine,
                height: 3,
                width: (MediaQuery.of(context).size.width / _items.length) - (kPaddingHorizontal * 2), // Calculer la width
              )
          ],
        )
      ],
    );
  }
}
