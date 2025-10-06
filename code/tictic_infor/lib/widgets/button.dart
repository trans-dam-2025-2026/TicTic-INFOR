import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onTap,
    required this.label,
    required this.status,
  });

  final GestureTapCallback onTap;
  final String label;
  final String status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: status == 'main' ? Color.fromRGBO(53, 78, 65, 1) : Color.fromRGBO(163, 177, 138, 1),
          border: Border.all(width: 2.0*2, color: status == 'main' ? Color.fromRGBO(53, 78, 65, 1) : Color.fromRGBO(163, 177, 138, 1)),
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [BoxShadow(
            color: Colors.black.withValues(alpha: 0.16),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 6),
          )],
        ),
        child: Text(label, style: status == 'main' ? TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 18,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500
        ) : TextStyle(
            color: Color.fromRGBO(53, 78, 65, 1),
            fontSize: 18,
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500
        ) ,),
      ),
    );
  }
}