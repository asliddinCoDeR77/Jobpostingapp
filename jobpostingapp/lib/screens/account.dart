import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/screens/mainscreen.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int _selectedIndex = 3;

  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    Text('Interviews Page'),
    Text('Messages Page'),
    AccountPageContent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Interviews',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.splashcolor,
        onTap: _onItemTapped,
      ),
    );
  }
}

class AccountPageContent extends StatelessWidget {
  const AccountPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              width: double.infinity,
              height: 245,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppImage.code,
                    )),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 35,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
                bottom: -60,
                right: 0,
                left: 0,
                child: Container(
                  width: 160,
                  height: 140,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Image.asset(
                      AppImage.boy,
                      height: 130,
                    ),
                  ),
                ))
          ]),
          const Gap(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    'Asliddin',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Popins',
                        fontSize: 20),
                  ),
                  const Text(
                    'Programmer',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                  const Gap(20),
                  const Text(
                    'Duis aute irure dolor in reprehenderit in\nvoluptate velit esse cillum dolore eu',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Container(
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1, color: const Color(0xffE1D3FF))),
                        child: const Icon(
                          Icons.call,
                          color: AppColors.splashcolor,
                        ),
                      ),
                      const Gap(35),
                      Container(
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1, color: const Color(0xffE1D3FF))),
                        child: const Icon(
                          Icons.mail,
                          color: AppColors.splashcolor,
                        ),
                      ),
                      const Gap(35),
                      Container(
                          width: 68,
                          height: 68,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 1, color: const Color(0xffE1D3FF))),
                          child: const Icon(
                            CupertinoIcons.location_solid,
                            color: AppColors.splashcolor,
                          )),
                    ],
                  ),
                  const Gap(20),
                  Container(
                    width: 319,
                    height: 84,
                    decoration: BoxDecoration(
                        color: AppColors.splashcolor,
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(12)),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(8)),
                            Text(
                              'My Resume',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              'david_resume.pdf',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const Gap(20),
          Image.asset(
            AppImage.skills,
            height: 390,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
