import 'package:flutter/material.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/widgets/choosescreencontainertitles.dart';

class ChooseScreenContainers {
  static final container1 = Container(
    width: 319,
    height: 117,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      boxShadow: [
        BoxShadow(
          color: AppColors.splashcolor.withOpacity(0.2),
          spreadRadius: 4,
          blurRadius: 10,
          offset: const Offset(0, 13),
        ),
      ],
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ChooseScreenContainersClass(
          image: AppImage.girl,
          title: 'JOB SEEKERS',
          title2: 'Finding a job here never\nbeen easier than before',
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
      boxShadow: [
        BoxShadow(
          color: AppColors.splashcolor.withOpacity(0.1),
          spreadRadius: 4,
          blurRadius: 10,
          offset: const Offset(0, 13),
        ),
      ],
    ),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ChooseScreenContainersClass(
          image: AppImage.girl,
          title: 'COMPANY',
          title2: 'Let’s recruit your great\ncandidate faster here',
        )
      ],
    ),
  );
}
