import 'package:flutter/material.dart';

class PageViewClass extends StatelessWidget {
  final String image;
  final String title;
  final String title2;
  final String description;

  const PageViewClass({
    required this.image,
    required this.title,
    required this.title2,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 245.2,
          height: 245.2,
        ),
        const SizedBox(height: 24.0),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
            Text(
              title2,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
