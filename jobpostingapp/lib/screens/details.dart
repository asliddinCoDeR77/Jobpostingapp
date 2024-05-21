import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jobpostingapp/screens/apply_form.dart';
import 'package:jobpostingapp/utils/AppColors.dart';
import 'package:jobpostingapp/utils/AppImage.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(4.0),
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
        title: const Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border_rounded,
                color: AppColors.splashcolor,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(16)),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(20),
                  Text(
                    'Highspeed Studios',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  Gap(3),
                  Text(
                    'Senior Software\nEngineer',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 18),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                AppImage.companylogo4,
                height: 90,
              ),
              const Padding(padding: EdgeInsets.all(12))
            ],
          ),
          const Gap(25),
          Row(
            children: [
              Image.asset(
                AppImage.subinfo,
                height: 55,
              )
            ],
          ),
          const Gap(25),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              Image.asset(
                AppImage.salaryloc,
                height: 200,
              )
            ],
          ),
          const Gap(25),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Text(
                'Job Description',
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
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              Image.asset(
                AppImage.numbering,
                height: 140,
              )
            ],
          ),
          const Gap(25),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                width: 80,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffEAEAEA)),
                child: const Icon(
                  Icons.bookmark_border,
                  color: AppColors.splashcolor,
                  size: 30,
                ),
              ),
              const Gap(20),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => const ApplyForm(),
                    ),
                  );
                },
                child: Container(
                  width: 226,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.splashcolor),
                  child: const Center(
                    child: Text(
                      'APPLY JOB',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
