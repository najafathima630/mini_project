import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../admin/Navigation_bar.dart';
import '../user_or_mech_page.dart';
import 'Navigationbar_mechanic.dart';
import 'mech_service_home_tabbar.dart';
import 'mechanic_signup.dart';

class MechanicLogin extends StatefulWidget {
  const MechanicLogin({super.key});

  @override
  State<MechanicLogin> createState() => _MechanicLoginState();
}

class _MechanicLoginState extends State<MechanicLogin> {
  final form_key = GlobalKey<FormState>();
  var emailctrl = TextEditingController();
  var passwordctrl = TextEditingController();
  String id="";
  Future<void> mech_login() async {
    final mechanic = await FirebaseFirestore.instance
        .collection("mechanic_register")
        .where("email", isEqualTo: emailctrl.text)
        .where("password", isEqualTo: passwordctrl.text)
        .get();
    if (mechanic.docs.isNotEmpty) {
      id = mechanic.docs[0].id;
      print("$id");
      SharedPreferences userdata = await SharedPreferences.getInstance();
      userdata.setString("mechanic_id", id);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return navigation_barmechanic();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("invalid mail or password"),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffCFE2FF),
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return UserOrMechPage();
                },
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp)),
      ),

      body: Form(
          key: form_key,
          child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100.h, left: 130.w),
                    child: Container(
                      width: 140.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/tow 1.png"))),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 150.w, top: 30.h),
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.poppins(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 40.w),
                    child: Text(
                      "Enter email",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 20.h, right: 40.r),
                child: TextFormField(controller: emailctrl,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty mail";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                      10.sp,
                    )),
                    prefixIconColor: Colors.white,
                    suffixIconColor: Colors.white,
                    hintText: "Enter email",
                    filled: true,
                  ),

                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 40.w),
                    child: Text(
                      "Enter Password",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 20.h),
                child: TextFormField(controller: passwordctrl,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty password";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                      10.sp,
                    )),
                    prefixIconColor: Colors.white,
                    suffixIconColor: Colors.white,
                    hintText: "Enter password",
                    filled: true,
                  ),

                ),
              ),
              InkWell(
                onTap: () {
                  if (form_key.currentState!.validate()) {
                    print("object");
                   mech_login();
                  }
                  ;
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 130.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 80.w, top: 10.h),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Colors.white),
                      ),
                    ),
                    width: 200.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Do you have account?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Colors.black),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MechanicSignup();
                          },
                        ));
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(color: Colors.blue),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
