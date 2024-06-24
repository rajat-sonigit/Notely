import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/Screens/auth/termscondition.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/onboardingnavbar.dart';
import 'package:notely/elements/style.dart';
import 'package:notely/elements/textfield.dart';
import 'package:sizer/sizer.dart';

class NamePage extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 2);
  NamePage({Key? key}) : super(key: key);// Adjust initialPage as needed


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
                        "What's your",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Name?",
                        style: TextStyle(color: primaryColor, fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  color: primaryColor,
                  width: 100.w,
                  child: Padding(
                    padding: EdgeInsets.all(3.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: CustomTxtField(
                          HintText: "hint - Joe Disusa",
                          label: "Name",
                          textColor: Colors.black,
                          underlineColor: Colors.black,
                        )),
                        Spacer(),
                        OnboardingNavbar(
                          controller: _controller,
                          pageCount: 5, // Adjust this based on your pages count
                          showPrevious: true, // First screen, no previous button
                          onNext: () {
                            Get.to(termsAndCondition());
                          },
                          onPrevious: () {
                            Get.back(); // Implement navigation to previous page
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
