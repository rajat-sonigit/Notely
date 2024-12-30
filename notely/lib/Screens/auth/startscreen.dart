import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/Screens/auth/login.dart';
import 'package:notely/Screens/auth/signup.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/style.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(0.1.w),
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
                    Center(child: Text_button(onTap: () {
                      Get.to(LoginPage());
                    }))
                  ],
                ),
              ),
              Container(
                color: SecondaryColor,
                height: 50.h,
                width: 100.w,
                child: Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Let's Get",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                      const Text(
                        "Started",
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
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 30.w),
                          const SmallCircle(size: 8, color: primaryColor),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: primaryColorlessvisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: primaryColorlessvisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: primaryColorlessvisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: primaryColorlessvisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: primaryColorlessvisible),
                          SizedBox(width: 20.w),
                          InkWell(
                            onTap: () {
                              Get.to(Signup());
                            },
                            child: const Text(
                              " NEXT --> ",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ],
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
