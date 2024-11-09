import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/admin/tap_bar.dart';

import 'admin_homeuser.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key});

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 50.h),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return Admin_tabbar();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_back_ios_new_sharp))
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 110.w),
                                child: CircleAvatar(
                                  radius: 70.r,
                                  backgroundColor: Color(0xffE8F1FF),
                                  backgroundImage:
                                      AssetImage("Assets/man3.png"),
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 160.w, top: 20.h),
                              child: Text(
                                "Name",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 160.w, top: 10.h),
                              child: Text(
                                "Location",
                                style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 40.w),
                              child: Text(
                                "Username",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Username",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffE8F1FF),
                                    borderRadius: BorderRadius.circular(10.r)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 40.w),
                              child: Text(
                                "Phone number",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "0000000000",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffE8F1FF),
                                    borderRadius: BorderRadius.circular(10.r)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 40.w),
                              child: Text(
                                "email address",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Example@email.com",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 286.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffE8F1FF),
                                    borderRadius: BorderRadius.circular(10.r)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40.w, top: 150.h),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return AdminHomeuser();
                                    },
                                  ));
                                },
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      "Accept",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  width: 142.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      color: Color(0xff73ABFF),
                                      borderRadius: BorderRadius.circular(5.r)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 150.h),
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "reject",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp),
                                      ),
                                    ),
                                    width: 142.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFF9F9D),
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                height: 826.h,
                width: 370.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
