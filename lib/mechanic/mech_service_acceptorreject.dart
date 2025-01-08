import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Navigationbar_mechanic.dart';
import 'mech_rating.dart';
import 'mech_service_home_tabbar.dart';

class MechServiceAcceptorreject extends StatefulWidget {
  const MechServiceAcceptorreject({
    super.key,
    required this.id,
    required this.name,
    required this.problem,
    required this.place,
    required this.data,
    required this.time,
    required this.phone,
  });
  final id;
  final name;
  final problem;
  final place;
  final data;
  final time;
  final phone;



  @override
  State<MechServiceAcceptorreject> createState() =>
      _MechServiceAcceptorrejectState();
}

class _MechServiceAcceptorrejectState extends State<MechServiceAcceptorreject> {
  Future<void> selectaccept() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Request")
          .doc(widget.id)
          .update({"Status": 1});
    });
  }

  Future<void> selectreject() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Request")
          .doc(widget.id)
          .update({"Status": 2});
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Request")
            .doc(widget.id)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("User not found"),
            );
          }
          if (!snapshot.hasData || snapshot.data == null) {
            return Center(
              child: Text("No data founded"),
            );
          }
          final user_req = snapshot.data!.data() as Map<String, dynamic>;
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return navigation_barmechanic();
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
                                    backgroundImage:
                                        AssetImage("Assets/boss.png"),
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
                                    "${widget.name}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: Text(
                                    "problem:",
                                    style: GoogleFonts.poppins(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 65.w),
                                  child: Text(
                                    "${widget.problem}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                                child: Text(
                                  "place:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 90.w, top: 10.h),
                                child: Text(
                                  "${widget.place}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                                child: Text(
                                  "Date:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 97.w),
                                child: Text(
                                  "${widget.data}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                                child: Text(
                                  "Time:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 97.w, top: 10.h),
                                child: Text(
                                  "${widget.time}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                                child: Text(
                                  "contact number:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w, top: 10.h),
                                child: Text(
                                  "${widget.phone}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),user_req["Status"]==0?
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 50.w, top: 100.h),
                                  child: GestureDetector(onTap: () {
                                    selectaccept();
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
                                          borderRadius:
                                              BorderRadius.circular(14.r)),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 100.h),
                                      child: GestureDetector(onTap: () {
                                        selectreject();
                                      },
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
                                              borderRadius:
                                                  BorderRadius.circular(12.r)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ):user_req["Status"]==1?Container(
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
                                  borderRadius:
                                  BorderRadius.circular(14.r)),
                            ):Container(
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
                                  borderRadius:
                                  BorderRadius.circular(12.r)),
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
        });
  }
}
