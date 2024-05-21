import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/screens/details.dart';
import 'package:jobpostingapp/screens/mainscreen.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/utils/recentjobcontainers.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Search jobs...',
                      contentPadding: const EdgeInsets.all(20),
                      enabled: true,
                      suffixIcon: IconButton(
                          focusColor: const Color(0xffF0F0F0),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (ctx) => const MainScreen()),
                            );
                          },
                          icon: const Icon(
                            Icons.cancel,
                            color: Color(0xffB9B9B9),
                          )),
                      constraints: const BoxConstraints(
                        maxWidth: 359,
                        maxHeight: 58,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffF0F0F0)),
                          borderRadius: BorderRadius.circular(50))),
                ),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(16)),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Result',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      '45 Job founded',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.filter,
                      color: AppColors.splashcolor,
                    )),
                const Padding(padding: EdgeInsets.all(16)),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chip(
                      avatar: const Icon(
                        Icons.cancel,
                        size: 24,
                      ),
                      label: const Text(
                        'Fulltime',
                        style: TextStyle(
                            color: AppColors.splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                      elevation: 35.0,
                      color: const MaterialStatePropertyAll(Color(0xffE1D3FF)),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: const Color(0XffE1D3FF)),
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    const Gap(20),
                    Chip(
                      avatar: const Icon(
                        Icons.cancel,
                        size: 24,
                      ),
                      label: const Text(
                        'Remote Working',
                        style: TextStyle(
                            color: AppColors.splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.2),
                      ),
                      elevation: 35.0,
                      color: const MaterialStatePropertyAll(Color(0xffE1D3FF)),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: const Color(0XffE1D3FF)),
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chip(
                      avatar: const Icon(
                        Icons.cancel,
                        size: 24,
                      ),
                      label: const Text(
                        'London',
                        style: TextStyle(
                            color: AppColors.splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                      elevation: 35.0,
                      color: const MaterialStatePropertyAll(Color(0xffE1D3FF)),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: const Color(0XffE1D3FF)),
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                    Gap(20),
                    Chip(
                      avatar: const Icon(
                        Icons.cancel,
                        size: 24,
                      ),
                      label: const Text(
                        'Hourly',
                        style: TextStyle(
                            color: AppColors.splashcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                      elevation: 35.0,
                      color: const MaterialStatePropertyAll(Color(0xffE1D3FF)),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: const Color(0XffE1D3FF)),
                        borderRadius: BorderRadius.circular(23),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(50),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecentJobContainers.container1,
                    const Gap(40),
                    RecentJobContainers.container2,
                    const Gap(40),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) => Details(),
                            ),
                          );
                        },
                        child: RecentJobContainers.container3),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
