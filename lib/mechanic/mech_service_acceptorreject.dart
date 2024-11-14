import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Navigationbar_mechanic.dart';
import 'mech_rating.dart';
import 'mech_service_home.dart';

class MechServiceAcceptorreject extends StatefulWidget {
  const MechServiceAcceptorreject({super.key});

  @override
  State<MechServiceAcceptorreject> createState() =>
      _MechServiceAcceptorrejectState();
}

class _MechServiceAcceptorrejectState extends State<MechServiceAcceptorreject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MechRating();
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
                padding: EdgeInsets.only(left: 20.w, top: 50.h),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 130.w),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("Assets/boss.png"),
                              radius: 50.r,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 150.w),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                  fontSize: 17.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              "problem",
                              style: GoogleFonts.poppins(
                                  fontSize: 19.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 65.w),
                            child: Text(
                              ":Fuel leaking",
                              style: GoogleFonts.poppins(
                                  fontSize: 17.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: Text(
                            "place",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 90.w, top: 10.h),
                          child: Text(
                            ":kozhikode beach road",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: Text(
                            "Date",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 97.w),
                          child: Text(
                            ":12/05/2023",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: Text(
                            "Time",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 97.w, top: 10.h),
                          child: Text(
                            ":10:00 am",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 10.h),
                          child: Text(
                            "contact number",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, top: 10.h),
                          child: Text(
                            ":0000000000",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50.w, top: 100.h),
                            child: InkWell(onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return navigation_barmechanic();
                                },
                              ));
                            },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Accept",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15.sp),
                                  ),
                                ),
                                height: 40.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff49CD6E),
                                    borderRadius: BorderRadius.circular(14.r)),
                              ),
                            ),
                          ), Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 100.h),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      "Reject",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp),
                                    ),
                                  ),
                                  height: 40.h,
                                  width: 110.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffCD4949),
                                      borderRadius: BorderRadius.circular(12.r)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  width: 373.w,
                  height: 499.h,
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(20.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
