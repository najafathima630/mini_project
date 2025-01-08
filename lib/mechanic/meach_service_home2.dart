import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_statuscompleted.dart';

class MeachServiceHome2 extends StatefulWidget {
  const MeachServiceHome2({super.key});

  @override
  State<MeachServiceHome2> createState() => _MeachServiceHome2State();
}

class _MeachServiceHome2State extends State<MeachServiceHome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("Request")
                  .where("Status", isEqualTo: 1)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var mech_service = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: mech_service.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 30.w, right: 30.r),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return MechStatuscompleted(
                                  id: mech_service[index].id,
                                name:mech_service[index]["User_name"],
                                  work: mech_service[index]["work"],
                                  data: mech_service[index]["Date"],
                                  time: mech_service[index]["Time"],
                                  place: mech_service[index]["location"]
                                  ,
                              );
                            },
                          ));
                        },
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.h, left: 20.w),
                                      child: Container(
                                        height: 50.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "Assets/boss.png"))),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.w, top: 10.h),
                                              child: Text(
                                                mech_service[index]["work"],
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.sp),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.w),
                                              child: Text(
                                                mech_service[index]["Date"],
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 115.w),
                                              child: Text(
                                                mech_service[index]["Time"],
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 19.w),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Center(
                                                      child: Text(
                                                        "Payment Success",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                    ),
                                                    width: 100.w,
                                                    height: 30.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff007B23),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.r)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.w),
                                              child: Text(
                                                mech_service[index]["location"],
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
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
                                      padding: EdgeInsets.only(left: 30.w),
                                      child: Text(
                                        mech_service[index]["User_name"],
                                        style: GoogleFonts.poppins(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            width: 350.w,
                            height: 130.h,
                            decoration: BoxDecoration(
                                color: Color(0xffCFE2FF),
                                borderRadius: BorderRadius.circular(20.r)),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
        ),
      ]),
    );
  }
}
