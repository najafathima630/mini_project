import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../user_or_mech_page.dart';
import 'Navigation_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final form_key = GlobalKey<FormState>();
  TextEditingController namectrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
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
                    padding: EdgeInsets.only(left: 100.w, top: 30.h),
                    child: Text(
                      "ADMINLOGIN",
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
                      "Enter Username",
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
                child: TextFormField(
                  controller: namectrl,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Empty username";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                      10.sp,
                    )),
                    prefixIconColor: Colors.white,
                    suffixIconColor: Colors.white,
                    hintText: "Enter username",
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
                          color: Colors.black
                      ),),)],
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.r, left: 40.w, top: 20.h),
                child: TextFormField(
                  controller: passwordctrl,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
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
                  obscureText: true,
                ),
              ),
              InkWell(
                onTap: () {
                  if (form_key.currentState!.validate()) {
                    if (namectrl.text == "naja" &&
                        passwordctrl.text == "najazz") {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return navigation_bar();
                        },
                      ));
                    } else
                      (ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("invalid username or password"),
                        backgroundColor: Colors.black,
                      )));
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 130.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.w, top: 10.h),
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
              )
            ],
          )),
    );
  }
}
