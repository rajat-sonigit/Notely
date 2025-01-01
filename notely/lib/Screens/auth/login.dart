import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/style.dart';
import 'package:notely/elements/textfield.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/lightsmile.png",
                        height: 130,
                        width: 250,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Log in.",
                        style: TextStyle(color: tertiaryColor, fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: tertiaryColor,
                height: 50.h,
                width: 100.w,
                child: Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: CustomTxtField(
                        HintText: "hint - xyz@email.com",
                        label: "Email",
                        textColor: primaryColor,
                        underlineColor: primaryColor,
                      )),
                      const Center(
                          child: CustomTxtField(
                        HintText: "hint - password123",
                        label: "Password",
                        textColor: primaryColor,
                        underlineColor: primaryColor,
                      )),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, right: 12.w),
                        child: Row(
                          children: [
                            Center(
                                child: Google_button(
                              onTap: () {},
                              radius: 10,
                            )),
                            SizedBox(
                              width: 3.h,
                            ),
                            Center(
                                child: Apple_button(onTap: () {}, radius: 10)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
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
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () {},
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
