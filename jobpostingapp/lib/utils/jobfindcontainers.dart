import 'package:flutter/material.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/widgets/jobstitle.dart';

class JobFindContainers {
  static final container1 = Container(
    width: 319,
    height: 117,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        JobsTitle(
          image: AppImage.companylogo,
          title: 'Software Engineer',
          title2: 'Jakarta, Indonesia',
          image2: AppImage.salary,
        )
      ],
    ),
  );
  static final container2 = Container(
    width: 319,
    height: 117,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        JobsTitle(
          image: AppImage.companylogo,
          title: 'Java Developer',
          title2: 'Jakarta, Indonesia',
          image2: AppImage.salary,
        )
      ],
    ),
  );
}
