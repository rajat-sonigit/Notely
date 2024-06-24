import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget Text_button(
    {required VoidCallback onTap,
    double radius = 10,
    Color color = const Color.fromRGBO(10, 25, 48, 1)}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      height: 8.h,
      width: 70.w,
      child: const Center(
        child: Text(
          "already a user?",
          style:
              TextStyle(color: Color.fromRGBO(226, 221, 203, 1), fontSize: 20),
        ),
      ),
    ),
  );
}

Widget Google_button({
  required VoidCallback onTap,
  double radius = 10,
  Color color = tertiaryColor, // Change to your tertiaryColor if needed
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: primaryColor, // Set the border color to white
          width: 2.0, // Set the border width (adjust as needed)
        ),
      ),
      height: 8.h,
      width: 30.w,
      child: Center(
        child: Image.asset(
          "assets/google.png",
          height: 50,
          width: 50,
        ),
      ),
    ),
  );
}

Widget Apple_button(
    {required VoidCallback onTap,
    double radius = 10,
    Color color = tertiaryColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor, // Set the border color to white
            width: 2.0, // Set the border width (adjust as needed)
          ),
          color: color,
          borderRadius: BorderRadius.circular(radius)),
      height: 8.h,
      width: 30.w,
      child: Center(
        child: Image.asset(
          "assets/apple.png",
          height: 50,
          width: 50,
        ),
      ),
    ),
  );
}

Widget text_buttonPrimary({
  required VoidCallback onTap,
  double radius = 10,// Default color
  required String buttonText,
  required Color buttonTextColor,
  required Color buttonColor,
  required int pageIndexToNavigate, // Index of page to navigate to
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      height: 8.h, // Adjust height as needed
      width: 70.w, // Adjust width as needed
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor, fontSize: 20.sp), // Using Sizer for responsive font size
        ),
      ),
    ),
  );
}

const primaryColor = Color.fromRGBO(226, 221, 203, 1);
const primaryColorlessvisible = Color.fromRGBO(226, 221, 203, 0.5);
const SecondaryColor = Color.fromRGBO(10, 25, 48, 1);
const SecondaryColorlessVisible = Color.fromRGBO(10, 25, 48, 0.5);
const tertiaryColor = Color.fromRGBO(214, 144, 105, 1);
