import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/screens/loginscreen.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/utils/ChooseScreenContainers.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SafeArea(
          child: Column(children: [
            const Gap(16),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                AppImage.logo,
                height: 207,
                width: 129,
              ),
            ]),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Continue as',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          fontFamily: 'Poppins'),
                    ),
                    const Gap(15),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Color(0xff000000)),
                    ),
                    const Gap(15),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (ctx) => const LoginScreen(
                                      email: '',
                                      password: '',
                                      name: '',
                                    )),
                          );
                        },
                        child: ChooseScreenContainers.container1),
                    const Gap(30),
                    InkWell(
                        onTap: () {}, child: ChooseScreenContainers.container2),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
