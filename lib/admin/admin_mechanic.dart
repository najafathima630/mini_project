import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_homeuser.dart';

class AdminMechanic extends StatefulWidget {
  const AdminMechanic({super.key});

  @override
  State<AdminMechanic> createState() => _AdminMechanicState();
}

class _AdminMechanicState extends State<AdminMechanic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 50.h),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.arrow_back_ios_new_sharp))
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Container(
                            width: 150.w,
                            height: 150.h,
                            color: Colors.blue[100],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 160.w, top: 2.h),
                              child: Text(
                                "Name",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 160.w, top: 1.h),
                              child: Text(
                                "Location",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.h, left: 40.w),
                              child: Text(
                                "Username",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Username",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
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
                              padding: EdgeInsets.only(top: 5.h, left: 40.w),
                              child: Text(
                                "Phone number",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "0000000000",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
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
                              padding: EdgeInsets.only(top: 5.h, left: 40.w),
                              child: Text(
                                "email address",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Example@email.com",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
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
                              padding: EdgeInsets.only(top: 5.h, left: 40.w),
                              child: Text(
                                "Work experience",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "experience",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
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
                              padding: EdgeInsets.only(top: 5.h, left: 40.w),
                              child: Text(
                                "Work shop name",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "shop name",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
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
                              padding: EdgeInsets.only(top: 5.h, left: 40.w),
                              child: Text(
                                "Your Location",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Enter your Location",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
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
                              padding: EdgeInsets.only(left: 40.w, top: 24.h),
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Accept",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.sp),
                                  ),
                                ),
                                width: 142.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff73ABFF),
                                    borderRadius: BorderRadius.circular(5.r)),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 24.h),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "reject",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp),
                                      ),
                                    ),
                                    width: 142.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFF9F9D),
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                height: 840.h,
                width: 370.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
