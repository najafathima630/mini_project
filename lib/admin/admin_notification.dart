import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_addnotification.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: CircleAvatar(
            backgroundImage: AssetImage("Assets/girl.jpg"),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
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
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              "Heading",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 15.sp),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "used to demonstrate the visual form of a",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 15.sp),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "document or a typeface without relying  . . . . ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 15.sp),
                            )
                          ],
                        )
                      ]),
                      width: 360.w,
                      height: 130.h,
                      color: Colors.white,
                    ),
                  );
                },
                itemCount: 6),
          ),
          Padding(
            padding: EdgeInsets.only(left: 260.w),
            child: FloatingActionButton(
              shape: CircleBorder(side: BorderSide(width: 1.w)),
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdminAddnotification();
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
