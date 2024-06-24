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
              Flexible(
                child: Container(
                  color: tertiaryColor,
                  width: 100.w,
                  child: Padding(
                    padding: EdgeInsets.all(3.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: CustomTxtField(
                          HintText: "hint - warre@email.com",
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
                              Flexible(
                                child: Center(
                                  child: Google_button(
                                    onTap: () {},
                                    radius: 10,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3.h,
                              ),
                              Flexible(
                                child: Center(
                                  child: Apple_button(
                                    onTap: () {},
                                    radius: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Center(child: text_buttonPrimary(
                          onTap: () {
                          },
                          buttonColor: Color.fromRGBO(226, 221, 203, 1),
                          buttonText: 'Log In',
                          buttonTextColor: Color.fromRGBO(214, 144, 105, 1),
                          pageIndexToNavigate: 1, // Replace with actual page index
                        )
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
