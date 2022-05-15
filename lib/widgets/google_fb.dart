import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GoogleFbIcons extends StatelessWidget {
   const GoogleFbIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 6.5.h,
          height: 6.5.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4), blurRadius: 4, color: Colors.black26)
            ],
          ),
          padding: EdgeInsets.all(1.5.h),
          child: Image.asset('assets/google.png'),
        ),
        SizedBox(
          width: 6.w,
        ),
        Container(
          width: 6.5.h,
          height: 6.5.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4), blurRadius: 4, color: Colors.black26)
            ],
          ),
          padding: EdgeInsets.all(1.5.h),
          child: Image.asset('assets/facebook.png'),
        ),
      ],
    );
  }
}
