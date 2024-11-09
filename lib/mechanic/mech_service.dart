import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_service_home.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  void _showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Add Service",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
      content: SizedBox(
        height: 100,
        child: Column(
          children: [
            Container(
              width: 250.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r)),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 100.w, top: 10.h),
                          child: Text(
                            "Done",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.sp)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 20.w),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h, left: 90.w),
                        child: Text(
                          "Bookings",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  )
                ],
              )
            ],
          ),
          onPressed: () {
            print("pressed");
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return mech_service_home();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Padding(
          padding: EdgeInsets.only(left: 100.w),
          child: Text(
            "service",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 20.sp),
          ),
        ),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.w, top: 60),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 70.w, top: 50.h),
                          child: Text(
                            "Tyre puncture service",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 13.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80.w, top: 50.h),
                          child: Icon(
                            Icons.delete,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w, top: 30.h),
                          child: Container(
                            width: 285.w,
                            height: 2,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 120.w, top: 30.h),
                          child: Text(
                            "Engine service",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 13.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80.w, top: 30.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w, top: 30.h),
                          child: Container(
                            width: 285.w,
                            height: 2,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 120.w, top: 30.h),
                          child: Text(
                            "A/c service",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 13.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 105.w, top: 30.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.w, top: 30.h),
                          child: Container(
                            width: 285.w,
                            height: 2,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 110.w, top: 10.h),
                          child: Text(
                            "Electric service",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 13.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80.w, top: 1.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                height: 350.h,
                width: 332.w,
                decoration: BoxDecoration(
                    color: Color(0xffCFE2FF),
                    borderRadius: BorderRadius.circular(15.r)),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 280.h, left: 280.w),
          child: FloatingActionButton(
            shape: CircleBorder(side: BorderSide(width: 1.w)),
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return AlertDialog();
                },
              ));
            },
          ),
        ),
      ]),
    );
  }
}
