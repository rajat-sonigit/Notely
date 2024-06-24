import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/Screens/auth/dive.dart';
import 'package:notely/elements/circles.dart';
import 'package:notely/elements/onboardingnavbar.dart';
import 'package:notely/elements/style.dart';
import 'package:notely/elements/textfield.dart';
import 'package:sizer/sizer.dart';

class termsAndCondition extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 3); // Adjust initialPage as needed

  termsAndCondition({Key? key}) : super(key: key);
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
                        Spacer(),
                        OnboardingNavbar(
                          controller: _controller,
                          pageCount: 5, // Adjust this based on your pages count
                          showPrevious: true, // First screen, no previous button
                          onNext: () {
                            Get.to(Dive());
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
