import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toto_project/constants.dart';
import 'package:toto_project/widgets/email_password_header.dart';
import 'package:toto_project/widgets/google_fb.dart';
import 'package:toto_project/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome back',
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Disrupting the tredition of lending and borrowing.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                const EmailPasswordHeader(label: 'Email'),
                SizedBox(
                  height: 1.h,
                ),
                const CustomTextField(hintText: 'example@gmail.com'),
                SizedBox(
                  height: 3.h,
                ),
                const EmailPasswordHeader(label: 'Password'),
                SizedBox(
                  height: 1.h,
                ),
                const CustomTextField(
                  hintText: '8-characters password',
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12.sp,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                MaterialButton(
                  height: 5.7.h,
                  minWidth: 26.w,
                  color: kGreen,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: const Text("Login"),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 0.6,
                          color: Colors.grey,
                          margin: const EdgeInsets.only(right: 12),
                        ),
                      ),
                      Text(
                        "Or continue with",
                        style: TextStyle(fontSize: 11.sp, color: Colors.grey),
                      ),
                      Expanded(
                        child: Container(
                          height: 0.6,
                          color: Colors.grey,
                          margin: const EdgeInsets.only(left: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                const GoogleFbIcons(),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do not have an account?',
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      'Register',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kGreen,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
