import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toto_project/constants.dart';
import 'package:toto_project/widgets/kyc_container.dart';
import 'package:toto_project/widgets/main_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //CURRENT PAGE INDEX
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.5.h),
              child: Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.5.h),
                  child: Text(
                    'Welcome John',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              const KycContainer(),
              SizedBox(height: 3.h),
              const MainCard(),
              const MainCard(),
              const MainCard(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kFloatingActionButtonColor,
          onPressed: () {},
          child: const Icon(
            Icons.category,
            color: kGreen,
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          selectedItemColor: kGreen,
          unselectedItemColor: kUnselectedItemColor,
        ),
      ),
    );
  }
}
