import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_mechanic.dart';

class AdminHome1 extends StatefulWidget {
  const AdminHome1({super.key});

  @override
  State<AdminHome1> createState() => _AdminHome1State();
}

class _AdminHome1State extends State<AdminHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: InkWell(onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return AdminMechanic();
        },));
      },
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 20.w,
                height: 20.h,
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.r),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 40.h, left: 20.w),
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("Assets/man.png"))),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.w, top: 10.h),
                                    child: Text(
                                      "Name",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: Text(
                                      "MobileNumber",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Text(
                                      "service",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  width: 350.w,
                  height: 130.h,
                  color: Colors.white,
                ),
              );
            },
            itemCount: 6),
      ),
    );
  }
}
