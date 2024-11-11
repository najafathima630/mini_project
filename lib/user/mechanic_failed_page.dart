import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechanicFailedPage extends StatefulWidget {
  const MechanicFailedPage({super.key});

  @override
  State<MechanicFailedPage> createState() => _MechanicFailedPageState();
}

class _MechanicFailedPageState extends State<MechanicFailedPage> {
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
              "Mechanic Bill",
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
                padding: EdgeInsets.only(left: 130.w),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30.sp,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                Icons.star_half_rounded,
                color: Colors.yellow,
                size: 30.sp,
              ),
              Icon(
                CupertinoIcons.pencil,
                color: Colors.black,
                size: 30.sp,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 50.h),
                child: Text(
                  "Failed reason",
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 50.h),
                child: Container(
                  child: Text(
                    "Failed reson show",
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  height: 146.h,
                  width: 305.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.w,
                      ),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              )
            ],
          ),Padding(
            padding:
            EdgeInsets.only(right: 80.r, left: 60.w, top: 70.h),
            child: Container(
              child: Center(
                child: Text(
                  "Ok",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
              ),
              width: 249.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Color(0xff2357D9),
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ),
        ]));
  }
}
