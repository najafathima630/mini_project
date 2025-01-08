import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/user/user_mechanic_list_appbar.dart';
import 'package:mini_project/user/user_mechanic_request_list.dart';
import 'package:mini_project/user/user_rating_page.dart';

class UserPayment extends StatefulWidget {
  const UserPayment({super.key, required this. id, required this.name});
final id;
final name;
  @override
  State<UserPayment> createState() => _UserPaymentState();
}

class _UserPaymentState extends State<UserPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 300.h, left: 160.w),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/tick.png"))),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 2.h),
                child: Text(
                  "Succesful",
                  style: GoogleFonts.poppins(
                      fontSize: 24.sp, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 300.h),
            child: InkWell(
              onTap: () {
                print("object");
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return UserRatingPage();
                  },
                ));
                ;
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Back to home page",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Colors.white),
                  ),
                ),
                width: 250.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Color(0xff2357D9),
                    borderRadius: BorderRadius.circular(10.sp)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
