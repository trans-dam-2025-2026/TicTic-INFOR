import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 2.0 / 2,
              color: Color.fromRGBO(53, 78, 65, 1),
            ),
          ),
          const SizedBox(width: 12.0),
          const Text('Où'),
          const SizedBox(width: 12.0),
          Flexible(
            child: Container(
              height: 2.0 / 2,
              color: Color.fromRGBO(53, 78, 65, 1),
            ),
          ),
        ],
      ),
    );
  }
}
