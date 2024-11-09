import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserMechanicDetailePage extends StatefulWidget {
  const UserMechanicDetailePage({super.key});

  @override
  State<UserMechanicDetailePage> createState() =>
      _UserMechanicDetailePageState();
}

class _UserMechanicDetailePageState extends State<UserMechanicDetailePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
          title: Padding(
            padding: EdgeInsets.only(left: 70.w),
            child: Text(
              "Needed Service",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 20.sp),
            ),
          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 160.w, top: 50.h),
                child: Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("Assets/bussiness-man 2.png")),
                        borderRadius: BorderRadius.circular(12.r))),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 180.w, top: 2.h),
                child: Text(
                  "Name",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 2.h),
                child: Text(
                  "contact number",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 140.w, top: 2.h),
                child: Text(
                  "+2 Year experience",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 160.w, top: 10.h),
                child: Container(
                  child: Center(
                    child: Text(
                      "Available",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    ),
                  ),
                  height: 24.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color(0xff49CD6E),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 30.h),
                child: Text(
                  "Add needed Service",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w400),
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
                        "Fuel leaking",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300, color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 170.w),
                        child: Icon(Icons.arrow_drop_down_circle_outlined),
                      )
                    ],
                  ),
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Color(0xffE8F1FF),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 10.w),
                child: Icon(
                  Icons.add_circle_outlined,
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 260.w),
                  child: Icon(Icons.arrow_drop_down_circle_outlined),
                ),
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(12.r)),
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 30.h),
                child: Text(
                  "Place",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 45.w, top: 30.h),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Beach road calicut",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, color: Colors.black,fontSize: 14.sp),
                    ),

                  ],
                ),
                height: 90.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    borderRadius: BorderRadius.circular(15.r)),
              ),
            ),
          ]), Padding(
            padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 40.h),
            child: Container(
              child: Center(
                child: Text(
                  "Rquest",
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
        ]));
  }
}
