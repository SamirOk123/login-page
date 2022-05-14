import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toto_project/constants.dart';

class KycContainer extends StatelessWidget {
  const KycContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      width: double.infinity,
      padding: EdgeInsets.all(2.h),
      height: 11.2.h,
      decoration: BoxDecoration(
          color: kContainerColor, borderRadius: BorderRadius.circular(5)),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Get Started',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
                  ),
                  Text(
                    'Let\'s start your 4 step KYC process.',
                    style: TextStyle(
                      fontSize: 8.5.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              height: 4.h,
              minWidth: 28.w,
              color: kGreen,
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "Proceed",
                style: TextStyle(fontSize: 8.5.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
