import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_service_acceptorreject.dart';
import 'mech_status_reject.dart';

class MechStatuscompleted extends StatefulWidget {
  const MechStatuscompleted({super.key});

  @override
  State<MechStatuscompleted> createState() => _MechStatuscompletedState();
}

class _MechStatuscompletedState extends State<MechStatuscompleted> {
  String _selectedValue = 'completed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MechServiceAcceptorreject();
                  },
                ));
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("Assets/boss.png"),
                              backgroundColor: Color(0xffCFE2FF),
                              radius: 40.r,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 40.w, top: 10.h),
                                    child: Text(
                                      "Fuel leaking",
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
                                        EdgeInsets.only(left: 1.w, top: 6.h),
                                    child: Text(
                                      "Date",
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
                                        EdgeInsets.only(left: 1.w, top: 8.h),
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
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: Text(
                              "Name",
                              style: GoogleFonts.poppins(),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  width: 350.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 100.h),
                child: Text(
                  "Add status",
                  style: GoogleFonts.poppins(
                      fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 10),
              child: Radio<String>(
                value: 'completed',
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                },
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Text(
                  "Completed",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp, fontWeight: FontWeight.w500),
                ),
              ),
            ]),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 1, top: 10),
                child: Radio<String>(
                  value: 'not completed',
                  groupValue: _selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Text(
                    " Not Completed",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ])
            ])
          ]),
          Visibility(
            visible: _selectedValue == 'completed',
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.w, top: 50.h),
                      child: Text(
                        "Amount",
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90.w, top: 50.h),
                      child: Container(
                        child: Center(
                          child: Text(
                            "\u20B9    2000/-",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          ),
                        ),
                        height: 43.h,
                        width: 219.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.w,
                            ),
                            borderRadius: BorderRadius.circular(12.r)),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MechStatuscompleted();
                      },
                    ));
                    ;
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 80.r, left: 60.w, top: 130.h),
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
                      width: 249.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Color(0xff2357D9),
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: _selectedValue == 'not completed',
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.w, top: 50.h),
                      child: Text(
                        "Reject reason",
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
                ),
                InkWell(
                  onTap: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return MechStatuscompleted();
                      },
                    ));
                    ;
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 80.r, left: 60.w, top: 70.h),
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
                      width: 249.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Color(0xff2357D9),
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
