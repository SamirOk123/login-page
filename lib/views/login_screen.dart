import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toto_project/constants.dart';
import 'package:toto_project/views/home_page.dart';
import 'package:toto_project/widgets/email_password_header.dart';
import 'package:toto_project/widgets/google_fb.dart';
import 'package:toto_project/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back',
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Disrupting the tredition of lending and borrowing.',
                  style: TextStyle(color: Colors.grey[600], fontSize: 9.sp),
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
                    fontSize: 9.sp,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              MaterialButton(
                height: 5.h,
                minWidth: 28.w,
                color: kGreen,
                elevation: 0,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                highlightElevation: 0,
                splashColor: Colors.white,
                focusElevation: 0,
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 9.sp),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: double.infinity,
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
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey),
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
                height: 12.h,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Do not have an account? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                          color: kGreen,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
