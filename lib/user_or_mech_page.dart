import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/splash/splash_screen.dart';
import 'package:mini_project/user/user_login.dart';

import 'admin/Login_page.dart';
import 'mechanic/mechanic_login.dart';

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
          ),
          Row(
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
          InkWell(
            onTap: () {
              print("object");
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return MechanicLogin();
                },
              ));
              ;
            },
            child: Padding(
              padding: EdgeInsets.only(right: 80.r, left: 60.w, top: 70.h),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 10.w),
                  child: Text(
                    "Mechanic",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Colors.white),
                  ),
                ),
                width: 286.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Color(0xff2357D9),
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("object");
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return UserLogin();
                },
              ));
              ;
            },
            child: Padding(
              padding: EdgeInsets.only(right: 80.r, left: 60.w, top: 20.h),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: Text(
                    "User",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Colors.black),
                  ),
                ),
                width: 286.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
              child: Text(
                "Admin Login",
                style: GoogleFonts.poppins(
                    color: Color(0xff2357D9),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600),
              )),Padding(
            padding:
            EdgeInsets.only(right: 80.r, left: 60.w, top: 160.h),
            child: Container(
              child: Center(
                child: Text(
                  "CONTINUE",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
              ),
              width: 200.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xff2357D9),
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ),
        ],
      ),
    );
  }
}
