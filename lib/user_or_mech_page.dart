import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/splash/splash_screen.dart';

class UserOrMechPage extends StatefulWidget {
  const UserOrMechPage({super.key});

  @override
  State<UserOrMechPage> createState() => _UserOrMechPageState();
}

class _UserOrMechPageState extends State<UserOrMechPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SplashScreen();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 130.w),
                child: Container(
                  width: 160.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/tow 1.png"))),
                ),
              )
            ],
          ), Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 10.h),
                child: Text(
                  "who you are",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
