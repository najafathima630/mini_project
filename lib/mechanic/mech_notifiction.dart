import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MechNotifiction extends StatefulWidget {
  const MechNotifiction({super.key});

  @override
  State<MechNotifiction> createState() => _MechNotifictionState();
}

class _MechNotifictionState extends State<MechNotifiction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            "Notification",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 20.sp),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 50.h),
                child: Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            "Admin notification",
                            style: GoogleFonts.inter(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70.w),
                          child: Text(
                            "10:00 am",
                            style: GoogleFonts.inter(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 200.w, top: 60.h),
                          child: Text(
                            "10/05/2023",
                            style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )
                  ]),
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
        ],
      ),
    );
  }
}
