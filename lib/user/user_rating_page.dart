import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/user/user_mechanic_list_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRatingPage extends StatefulWidget {
  const UserRatingPage({
    super.key, required
  });




  @override
  State<UserRatingPage> createState() => _UserRatingPageState();
}

class _UserRatingPageState extends State<UserRatingPage> {
  Future<void> ratingdata() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Request")
          .doc()
          .update({});
    });
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirebaseFirestore.instance.collection("Request").doc().get(),
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
          final user_rating = snapshot.data!.data() as Map<String, dynamic>;
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
                    "Your rating",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 20.sp),
                  ),
                ),
              ),
              body: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 160.w, top: 50.h),
                      child: Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("Assets/bussiness-man 2.png")),
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 180.w, top: 2.h),
                      child: Text(
                        "Mech_name",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 140.w, top: 2.h),
                      child: Text(
                        "+2 Year experience",
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 160.w, top: 10.h),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Available",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ),
                        height: 24.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Color(0xff49CD6E),
                            borderRadius: BorderRadius.circular(12.r)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 130.w),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 30.sp,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.sp,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30.sp,
                    ),
                    Icon(
                      Icons.star_half_rounded,
                      color: Colors.yellow,
                      size: 30.sp,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.w, top: 40.h),
                      child: Text(
                        "Add rating",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80.w),
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black,
                        size: 50.sp,
                      ),
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 50.sp,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 50.sp,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 50.sp,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.black,
                      size: 50.sp,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 130.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 60.w, top: 10.h),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return UserMechanicList();
                            },
                          ));
                        },
                        child: Text(
                          "Submit",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                ),
              ]));
        });
  }
}
