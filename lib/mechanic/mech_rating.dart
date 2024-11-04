import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_service.dart';

class MechRating extends StatefulWidget {
  const MechRating({super.key});

  @override
  State<MechRating> createState() => _MechRatingState();
}

class _MechRatingState extends State<MechRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MechService();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Padding(
          padding: EdgeInsets.only(left: 100.w),
          child: Text(
            "Rating",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 23.sp),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90.w, top: 30.h),
                child: Text(
                  "The rating given to you",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 40.h),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.w, top: 20.h),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("Assets/boss.png"),
                              radius: 40.r,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.w, top: 30.h),
                                    child: Text(
                                      "Engine work",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 50.w, top: 10.h),
                                    child: Text(
                                      "Date",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 30.w),
                                            child: Text(
                                              "Rating",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                     
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.w, top: 10.h),
                                    child: Text(
                                      "Time",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.w, top: 10.h),
                                    child: Text(
                                      "Place",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.w),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                  fontSize: 17.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  width: 320.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
