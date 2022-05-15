import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toto_project/constants.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({Key? key, required this.hintText, this.suffixIcon})
      : super(key: key);

  final String hintText;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(1.h)),
            borderSide: const BorderSide(color: kGreen),
          ),
          contentPadding: EdgeInsets.only(left: 2.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.h),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 10.sp),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
