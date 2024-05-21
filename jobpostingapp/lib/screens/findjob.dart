import 'package:flutter/material.dart';
import 'package:jobpostingapp/screens/choose_screen.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';
import 'package:jobpostingapp/widgets/pageview.dart';

class FindJob extends StatefulWidget {
  const FindJob({super.key});

  @override
  State<FindJob> createState() => _FindJobState();
}

class _FindJobState extends State<FindJob> {
  final PageController pageController = PageController();
  int currentpage = 0;

  void onPageChanged(int page) {
    setState(() {
      currentpage = page;

      if (currentpage == 2) {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const ChooseScreen()),
          );
        });
      }
    });
  }

  void goToPreviousPage() {
    if (currentpage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void goToNextPage() {
    if (currentpage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: const [
                PageViewClass(
                  image: AppImage.findjob,
                  title: 'Find your dream',
                  title2: 'job now',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                ),
                PageViewClass(
                  image: AppImage.findjob,
                  title: 'Find your dream',
                  title2: 'job now',
                  description:
                      'Welcome to our app, where you can manage your tasks efficiently.',
                ),
                PageViewClass(
                  image: AppImage.findjob,
                  title: 'Find your dream',
                  title2: 'job now',
                  description:
                      'Welcome to our app, where you can manage your tasks efficiently.',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (currentpage < 2)
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: IconButton(
                    onPressed: goToPreviousPage,
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                  ),
                ),
              const SizedBox(width: 20),
              buildIndicator(),
              const SizedBox(width: 20),
              if (currentpage < 2)
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.splashcolor,
                  ),
                  child: IconButton(
                    onPressed: goToNextPage,
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 26,
          height: 6,
          decoration: BoxDecoration(
            color: currentpage == index ? AppColors.splashcolor : Colors.grey,
            borderRadius: BorderRadius.circular(4.0),
          ),
        );
      }),
    );
  }
}
