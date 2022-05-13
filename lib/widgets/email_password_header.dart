import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EmailPasswordHeader extends StatelessWidget {
  const EmailPasswordHeader({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13.sp),
      ),
    );
  }
}
