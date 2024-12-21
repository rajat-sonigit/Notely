import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/Screens/auth/dive.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/style.dart';
import 'package:notely/elements/textfield.dart';
import 'package:sizer/sizer.dart';
class TandC extends StatelessWidget {
  const TandC({super.key});

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
                color: SecondaryColor,
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
                        "assets/halfsmile.png",
                        height: 130,
                        width: 250,
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "One more",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "thing.",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: primaryColor,
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
                        HintText: "",
                        label: "Terms and Conditions",
                        textColor: Colors.black,
                        underlineColor: Colors.black,
                      )),
                      Center(
                        child: InkWell(
                            onTap: () {},
                            child: const Text("accept them? click here.")),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Text(
                              "<-- Previous",
                              style: TextStyle(
                                  color: SecondaryColor, fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          const SmallCircle(
                              size: 8, color: SecondaryColorlessVisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: SecondaryColorlessVisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: SecondaryColorlessVisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: SecondaryColorlessVisible),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(size: 8, color: SecondaryColor),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallCircle(
                              size: 8, color: SecondaryColorlessVisible),
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () {
                              Get.to(Dive());
                            },
                            child: const Text(
                              " NEXT --> ",
                              style: TextStyle(
                                  color: SecondaryColor, fontSize: 16),
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
