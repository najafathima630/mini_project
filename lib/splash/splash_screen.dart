import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../user_or_mech_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 400.h, left: 130.w),
                child: InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return UserOrMechPage();
                    },
                  ));
                },
                  child: Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/tow 1.png"))),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
