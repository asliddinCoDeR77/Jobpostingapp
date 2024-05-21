import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class JobsTitle extends StatelessWidget {
  final String image;
  final String image2;
  final String title;
  final String title2;

  const JobsTitle({
    required this.image,
    required this.title,
    required this.title2,
    required this.image2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(12)),
          Image.asset(
            image,
            width: 80,
            height: 80,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black),
              ),
              const Gap(8),
              Text(
                title2,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xff000000)),
              ),
              const Gap(10),
              Image.asset(
                image2,
                width: 134,
                height: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
