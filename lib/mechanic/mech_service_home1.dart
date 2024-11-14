import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_service_acceptorreject.dart';

class MechServiceHome1 extends StatefulWidget {
  const MechServiceHome1({super.key});

  @override
  State<MechServiceHome1> createState() => _MechServiceHome1State();
}

class _MechServiceHome1State extends State<MechServiceHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return MechServiceAcceptorreject();
              },
            ));
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
                                          image: AssetImage("Assets/boss.png"))),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 150.w, top: 10.h),
                                        child: Text(
                                          "Fuel leaking",
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
                                        padding: EdgeInsets.only(left: 200.w),
                                        child: Text(
                                          "Date",
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
                                        padding: EdgeInsets.only(left: 200.w),
                                        child: Text(
                                          "Time",
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
                                        padding: EdgeInsets.only(left: 200.w),
                                        child: Text(
                                          "Place",
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
                      decoration: BoxDecoration(
                          color: Color(0xffCFE2FF),
                          borderRadius: BorderRadius.circular(20.r)),
                    ),
                  );
                },
                itemCount: 4),
          ),
        ),
      ]),
    );
  }
}
