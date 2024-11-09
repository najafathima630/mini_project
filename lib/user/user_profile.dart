import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new_sharp)),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 160.w),
                child: CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage("Assets/girl.jpg"),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 190.w, top: 2.h),
                child: Text(
                  "Name",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 10.h),
                child: Text(
                  " Enter your Name",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, top: 20.h),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                      ),
                    ],
                  ),
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Color(0xffE8F1FF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 10.h),
                child: Text(
                  " Enter your Phone number",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ), Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, top: 20.h),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Phone number",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                      ),
                    ],
                  ),
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Color(0xffE8F1FF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          ),Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 10.h),
                child: Text(
                  " Enter your email",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 45.w, top: 20.h),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Enter email",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300, color: Colors.grey),
                      ),
                    ],
                  ),
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Color(0xffE8F1FF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          ),Padding(
            padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 180.h),
            child: Container(
              child: Center(
                child: Text(
                  "Done",
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
