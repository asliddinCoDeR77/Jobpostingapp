import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/screens/searchscreen.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/utils/jobfindcontainers.dart';
import 'package:jobpostingapp/utils/recentjobcontainers.dart';
import 'package:jobpostingapp/widgets/categoryitem.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Category> categories = [
    Category(icon: SvgPicture.asset(AppIcons.flash)),
    Category(icon: SvgPicture.asset(AppIcons.edit)),
    Category(icon: SvgPicture.asset(AppIcons.group)),
    Category(icon: SvgPicture.asset(AppIcons.translate)),
    Category(icon: SvgPicture.asset(AppIcons.code)),
    Category(icon: SvgPicture.asset(AppIcons.database)),
    Category(icon: SvgPicture.asset(AppIcons.tools)),
    Category(icon: SvgPicture.asset(AppIcons.more)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 207,
                  decoration: const BoxDecoration(
                      color: AppColors.splashcolor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(19),
                          bottomRight: Radius.circular(19))),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.all(12)),
                            Row(
                              children: [
                                const Text(
                                  'Good Morning',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                                const Gap(226),
                                Image.asset(
                                  AppImage.boy,
                                  height: 46,
                                  width: 46,
                                )
                              ],
                            ),
                            const Text(
                              'Asliddin',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (ctx) => const SearchScreen()),
                      );
                    },
                    child: Container(
                      width: 319,
                      height: 58,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x142E048E),
                            offset: Offset(0, 11),
                            blurRadius: 21,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            Gap(20),
                            Text(
                              'Search job here...',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(38),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsetsDirectional.all(10)),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 150,
                      height: 169,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff5C44F1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.all(10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                AppIcons.dots,
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                            ],
                          ),
                          const Spacer(),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(5)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '29',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Jobs Applied',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Gap(43),
                              SvgPicture.asset(
                                AppIcons.thick,
                                width: 40,
                                height: 40,
                                // ignore: deprecated_member_use
                                color: const Color(0xff6BBDFF),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 150,
                      height: 169,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff6BBDFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.all(10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                AppIcons.dots,
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                            ],
                          ),
                          const Spacer(),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(5)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Interviews',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Gap(43),
                              SvgPicture.asset(
                                AppIcons.ask,
                                width: 40,
                                height: 40,
                                // ignore: deprecated_member_use
                                color: const Color(0xff5C44F1),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Gap(38),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(12)),
                Text(
                  'Categories',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: 'Poppins'),
                )
              ],
            ),
            CategoriesGrid(categories: categories),
            const Gap(38),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(12)),
                const Text(
                  'Recomended Jobs',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: 'Poppins'),
                ),
                const Gap(130),
                SvgPicture.asset(AppIcons.scroll)
              ],
            ),
            const Gap(30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  JobFindContainers.container1,
                  const Gap(20),
                  JobFindContainers.container2
                ],
              ),
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
                    RecentJobContainers.container3,
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
