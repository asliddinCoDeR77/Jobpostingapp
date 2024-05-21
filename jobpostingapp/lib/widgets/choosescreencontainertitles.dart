import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/utils/AppColors.dart';

class ChooseScreenContainersClass extends StatelessWidget {
  final String image;
  final String title;
  final String title2;

  const ChooseScreenContainersClass({
    required this.image,
    required this.title,
    required this.title2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 60,
            height: 60,
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
                    color: AppColors.splashcolor),
              ),
              const Gap(8),
              Text(
                title2,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff000000)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
