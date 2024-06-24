import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/Screens/auth/login.dart';
import 'package:notely/Screens/auth/signup.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/onboardingnavbar.dart';
import 'package:notely/elements/style.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);

  StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.1.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: primaryColor,
                height: 50.h,
                width: 100.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/smilea.png",
                        height: 130,
                        width: 250,
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Center(
                      child: Text_button(onTap: () {
                        Get.to(LoginPage());
                      }),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  color: SecondaryColor,
                  width: 100.w,
                  child: Padding(
                    padding: EdgeInsets.all(3.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Let's Get Started",
                          style: TextStyle(color: primaryColor, fontSize: 35),
                        ),
                        const Text(
                          "We've all lost notes before, but ",
                          style: TextStyle(color: primaryColor, fontSize: 18),
                        ),
                        const Text(
                          "with Notely, that's a thing of",
                          style: TextStyle(color: primaryColor, fontSize: 18),
                        ),
                        const Text(
                          "the past!",
                          style: TextStyle(color: primaryColor, fontSize: 18),
                        ),
                        Spacer(),
                        OnboardingNavbar(
                          controller: _controller,
                          pageCount: 5, // Adjust this if you have multiple pages
                          showPrevious: false, // First screen, no previous button
                          onNext: () {
                            Get.to(Signup());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
