import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Navigationbar_mechanic.dart';
import 'mech_editprofile.dart';
import 'mech_service_home_tabbar.dart';

class MechEditProfile extends StatefulWidget {
  const MechEditProfile({super.key});

  @override
  State<MechEditProfile> createState() => _MechEditProfileState();
}

class _MechEditProfileState extends State<MechEditProfile> {
  void initState() {
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    SharedPreferences mech_data = await SharedPreferences.getInstance();
    setState(() {
      Mech_id = mech_data.getString("mech_id");
    });
  }

  var Mech_id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("mechanic_register")
            .doc(Mech_id)
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
          final mechh = snapshot.data!.data() as Map<String, dynamic>;

          return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MechProfile(
                                id: Mech_id,
                                name: mechh["mech_name"],
                                profile: mechh["profile_path"],
                                phone: mechh["number"],
                                location: mechh["location"],
                                experience: mechh["experience"],
                                email: mechh["email"],
                                shopname: mechh["shopname"]);
                          },
                        ));
                      },
                      icon: Icon(Icons.edit_calendar_outlined))
                ],
              ),
              body: (Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 160.w),
                      child: CircleAvatar(
                        radius: 60.r,
                        backgroundImage: AssetImage("Assets/profile.png"),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["name"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
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
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["name"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
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
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["number"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
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
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["email"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
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
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["experience"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
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
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["location"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
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
                      padding: EdgeInsets.only(left: 45.w, top: 30.h),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              mechh["shopname"] ?? "no data found",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        height: 50.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            color: Color(0xffE8F1FF),
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 20.h),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return navigation_barmechanic();
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
              ])));
        });
  }
}
