import 'package:flutter/material.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/widgets/jobstitle.dart';

class RecentJobContainers {
  static final container1 = Container(
    width: 375,
    height: 117,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        JobsTitle(
          image: AppImage.companylogo2,
          title: 'Junior Software Engineer',
          title2: 'Jakarta, Indonesia',
          image2: AppImage.salary,
        )
      ],
    ),
  );
  static final container2 = Container(
    width: 375,
    height: 117,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        JobsTitle(
          image: AppImage.companylogo3,
          title: 'Database Engineer',
          title2: 'London Washington',
          image2: AppImage.salary,
        )
      ],
    ),
  );
  static final container3 = Container(
    width: 375,
    height: 117,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        JobsTitle(
          title2: 'Highspeed Studio',
          image: AppImage.companylogo4,
          title: 'Senior Software Engineer',
          image2: AppImage.salary,
        )
      ],
    ),
  );
}
