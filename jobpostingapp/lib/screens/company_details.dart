import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/screens/mainscreen.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({super.key});

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(clipBehavior: Clip.none, children: [
          Container(
            width: double.infinity,
            height: 245,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImage.company,
                  )),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color(0xffF3F3F3),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xff6C6C6C),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'Company Details',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                const SizedBox(
                  width: 130,
                ),
                const Icon(
                  Icons.more_vert,
                  size: 35,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            bottom: -50,
            left: 20,
            child: Center(
              child: Image.asset(
                AppImage.companylogo4,
                height: 120,
              ),
            ),
          )
        ]),
        const Gap(50),
        const Row(
          children: [
            Padding(padding: EdgeInsets.all(14)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20),
                Text(
                  'Highspeed Studios',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 18),
                ),
                Gap(3),
                Text(
                  'Indonesia, Medan',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
              ],
            ),
            Gap(150),
            Column(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.amber,
                      fontFamily: 'Poppins',
                      fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        const Gap(20),
        Row(
          children: [
            const Padding(padding: EdgeInsets.all(12)),
            Image.asset(
              AppImage.contact,
              height: 250,
            )
          ],
        ),
        const Gap(35),
        const Row(
          children: [
            Padding(padding: EdgeInsets.all(12)),
            Text(
              'About Company',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 18),
            )
          ],
        ),
        const Gap(25),
        const Row(
          children: [
            Padding(padding: EdgeInsets.all(12)),
            Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  fontSize: 14),
            )
          ],
        ),
        const Gap(20),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => const MainScreen(),
              ),
            );
          },
          child: Container(
            width: 386,
            height: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.splashcolor),
            child: const Row(
              children: [
                Padding(padding: EdgeInsets.all(17)),
                Center(
                  child: Text(
                    '21 Available Jobs',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
                Gap(170),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
