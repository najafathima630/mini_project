import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Navigation_bar.dart';

class AdminAddnotification extends StatefulWidget {
  const AdminAddnotification({super.key});

  @override
  State<AdminAddnotification> createState() => _AdminAddnotificationState();
}

class _AdminAddnotificationState extends State<AdminAddnotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffbacE8F1FF),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return navigation_bar();
              },
            ));
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 50.h),
                child: Text(
                  "Enter Matter",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                    child: Row(
                      children: [
                        Text(
                          "Matter",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300, color: Colors.grey),
                        ),
                      ],
                    ),
                    height: 55.h,
                    width: 330.w,
                    color: Color(0xffbacFFFFFF)),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 50.h),
                child: Text(
                  "Enter content",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w, top: 20.h),
                child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "content...",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    height: 382.h,
                    width: 330.w,
                    color: Color(0xffbacFFFFFF)),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 80.h),
            child: Container(
              child: Center(
                child: Text(
                  "Submit",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
              ),
              width: 200.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ),
        ],
      ),
    );
  }
}
