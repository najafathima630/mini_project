import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Navigationbar_mechanic.dart';
import 'meach_service_home2.dart';
import 'mech_service_acceptorreject.dart';
import 'mech_status_reject.dart';

class MechStatuscompleted extends StatefulWidget {
  const MechStatuscompleted({
    super.key,
    required this.id,
    required this. name,
    required this.work,
    required this.data,
    required this.time,
    required this.place,
  });
  final id;
  final name;
  final work;
  final data;
  final time;
  final place;


  @override
  State<MechStatuscompleted> createState() => _MechStatuscompletedState();
}

class _MechStatuscompletedState extends State<MechStatuscompleted> {
  String _selectedValue = 'completed';

  Future<void> paymentdata() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Request")
          .doc(widget.id)
          .update({"Payment": 3, "Work_amount": pricectrl.text});
    });
  }

  Future<void> Rejectdata() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Request")
          .doc(widget.id)
          .update({"Payment": 4, "Reason": Reasonctrl.text});
    });
  }

  final pricectrl = TextEditingController();
  final Reasonctrl = TextEditingController();
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
          final mech_satus = snapshot.data!.data() as Map<String, dynamic>;
          return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MeachServiceHome2();
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
                                  padding:
                                      EdgeInsets.only(left: 20.w, top: 30.h),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("Assets/boss.png"),
                                    backgroundColor: Color(0xffCFE2FF),
                                    radius: 40.r,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 40.w, top: 10.h),
                                          child: Text(
                                            widget.work,
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
                                          padding: EdgeInsets.only(
                                              left: 20.w, top: 6.h),
                                          child: Text(
                                            widget.data,
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
                                          padding: EdgeInsets.only(
                                              left: 1.w, top: 8.h),
                                          child: Text(
                                            widget.time,
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
                                          padding: EdgeInsets.only(
                                              left: 1.w, top: 10.h),
                                          child: Text(
                                            widget.place,
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
                                    widget.name,
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
                      Padding(
                        padding:
                            EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                hintText: "Enter your price",
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              controller: pricectrl,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      InkWell(
                        onTap: () {
                          paymentdata();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 80.r, left: 60.w, top: 130.h),
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
                      Padding(
                        padding:
                            EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                hintText: "Enter your Reason",
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              controller: Reasonctrl,
                              maxLines: 5,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      InkWell(
                        onTap: () {
                          Rejectdata();
                          ;
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: 80.r, left: 60.w, top: 30.h),
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
        });
  }
}
