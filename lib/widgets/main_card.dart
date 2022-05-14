import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toto_project/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 6.h,
                height: 6.h,
                decoration: const BoxDecoration(
                  color: kUnselectedItemColor,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(kNetworkImageUrl),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'John Doe\'s loan was fulfilled for ',
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                    ),
                    TextSpan(
                      text: '\$300',
                      style: TextStyle(
                          color: kGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5.h),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '15 hours ago',
              style: TextStyle(color: Colors.grey, fontSize: 8.sp),
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          height: 0.6,
          color: Colors.grey,
        ),
        SizedBox(height: 2.h),
      ],
    );
  }
}
