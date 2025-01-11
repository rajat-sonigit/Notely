import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notely/elements/style.dart';

class CustomTxtField extends StatelessWidget {
  final String label;
  final String HintText;
  final double fontSize;
  final Color textColor;
  final Color underlineColor;
  final TextInputType keyboardType;
  const CustomTxtField({
    super.key,
    required this.label,
    required this.textColor,
    required this.underlineColor,
    this.fontSize = 16.0, // Use your primaryColor if needed
    this.keyboardType = TextInputType.text,
    required this.HintText,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: HintText,
          labelStyle: TextStyle(
            fontSize: fontSize,
            color: underlineColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: underlineColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: underlineColor,
            ),
          ),
        ),
        keyboardType: keyboardType,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }
}
