import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, this.suffixIcon})
      : super(key: key);

  final String hintText;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 1.h, left: 2.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.h),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
