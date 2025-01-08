import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/user/user_mechanic_list_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hello");
    userid();
  }

  Future<void> userid() async {
    SharedPreferences data1 = await SharedPreferences.getInstance();
    setState(() {
      id = data1.getString("userid");
    });
  }

  var id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new))),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("user_register")
              .doc(id)
              .get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("user found"));
            }
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(child: Text("no user data found"));
            }
            final User = snapshot.data!.data() as Map<String, dynamic>;

            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 160.w),
                      child: CircleAvatar(
                        radius: 60.r,
                        backgroundImage: AssetImage("Assets/girl.jpg"),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 190.w, top: 2.h),
                      child: Text(
                        "Name",
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.w, top: 10.h),
                      child: Text(
                        " Enter your Name",
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45.w, top: 20.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              User["name"] ?? "no found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 330.w,
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
                      padding: EdgeInsets.only(left: 40.w, top: 10.h),
                      child: Text(
                        " Enter your Phone number",
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45.w, top: 20.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              User["number"] ?? "no found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 330.w,
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
                      padding: EdgeInsets.only(left: 40.w, top: 10.h),
                      child: Text(
                        " Enter your email",
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45.w, top: 20.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              User["email"] ?? "no found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 330.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 180.h),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return UserMechanicList();
                        },
                      ));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Done",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                              color: Colors.white),
                        ),
                      ),
                      width: 200.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Color(0xff2357D9),
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
