import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sizer/sizer.dart';

class OnboardingNavbar extends StatelessWidget {
  final PageController controller;
  final int pageCount;
  final bool showPrevious;
  final VoidCallback onNext;
  final VoidCallback? onPrevious; // Optional callback for previous button

  const OnboardingNavbar({
    Key? key,
    required this.controller,
    required this.pageCount,
    this.showPrevious = true,
    required this.onNext,
    this.onPrevious,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
      color: Colors.transparent,
      child: Row(
        children: [
          if (showPrevious)
            InkWell(
              onTap: onPrevious,
              child: Text(
                "<-- LAST",
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
            )
          else
            SizedBox(width: 30.sp), // Placeholder with a fixed width
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                controller: controller,
                count: pageCount,
                effect: const WormEffect(
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                  type: WormType.thin,
                  activeDotColor: Colors.white,
                  dotColor: Colors.white54,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: onNext,
            child: Text(
              "NEXT -->",
              style: TextStyle(color: Colors.white, fontSize: 12.sp),
            ),
          ),
        ],
      ),
    );
  }
}
