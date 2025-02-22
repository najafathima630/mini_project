import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({super.key});

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
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
      body: ListView.separated(
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
                        Text(
                          "Name",
                          style: GoogleFonts.poppins(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 200.w),
                          child: Text(
                            "10/11/2023",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 18.sp),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\u20B95455",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Service",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Mechanic Name",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                width: 350.w,
                height: 130.h,
                color: Colors.white,
              ),
            );
          },
          itemCount: 6),
    );
  }
}
