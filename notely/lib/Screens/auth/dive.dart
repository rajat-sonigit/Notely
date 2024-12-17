import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/style.dart';
import 'package:sizer/sizer.dart';

class Dive extends StatelessWidget {
  const Dive({super.key});

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
                      height: 15.h,
                    ),
                    
                    Center(
                      child: Image.asset(
                        "assets/smilea.png",
                        height: 130,
                        width: 250,
                      ),
                    ),
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
                        "We are",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                      
                      const Text(
                        "done!",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                      const Text(
                        "Ready to dive into our app?",
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      ),
                      const Text(
                        "Let's go!",
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Center(child: text_buttonPrimary(onTap: () {})),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Text(
                              "<-- Previous",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 15.w),
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
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(size: 8, color: primaryColor),
                          SizedBox(width: 15.w),
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
