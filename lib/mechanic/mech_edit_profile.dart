import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_profile.dart';

class MechEditProfile extends StatefulWidget {
  const MechEditProfile({super.key});

  @override
  State<MechEditProfile> createState() => _MechEditProfileState();
}

class _MechEditProfileState extends State<MechEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MechProfile();
                  },
                ));
              },
              icon: Icon(Icons.edit_calendar_outlined))
        ],
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 160.w),
              child: CircleAvatar(
                radius: 60.r,
                backgroundImage: AssetImage("Assets/profile.png"),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "name",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
                height: 50.h,
                width: 300.w,
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
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Username",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
                height: 50.h,
                width: 300.w,
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
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
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
                width: 300.w,
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
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
                height: 50.h,
                width: 300.w,
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
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "experience",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
                height: 50.h,
                width: 300.w,
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
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Location",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
                height: 50.h,
                width: 300.w,
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
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Shop name",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                  ],
                ),
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(10.r)),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 20.h),
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
      ]),
    );
  }
}
