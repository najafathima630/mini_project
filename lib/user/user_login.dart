import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/user/user_mechanic_list_appbar.dart';
import 'package:mini_project/user/user_sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../admin/Navigation_bar.dart';
import '../user_or_mech_page.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final form_key = GlobalKey<FormState>();
  var passowrdctrl = TextEditingController();
  var Emailctrl = TextEditingController();
  String id = "";
  Future<void> User_login() async {
    final user = await FirebaseFirestore.instance
        .collection("user_register")
        .where("email", isEqualTo: Emailctrl.text)
        .where("password", isEqualTo: passowrdctrl.text)
        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      print("$id");
      SharedPreferences userdata = await SharedPreferences.getInstance();
      userdata.setString("userid", id);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return UserMechanicList();
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
    return Scaffold(
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
      backgroundColor: Color(0xffCFE2FF),
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
                    padding: EdgeInsets.only(left: 120.w, top: 30.h),
                    child: Text(
                      "USERLOGIN",
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
                      "Enter mail",
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
                  controller: Emailctrl,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty mail";
                    }
                    return null;
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
                child: TextFormField(
                  controller: passowrdctrl,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty password";
                    }
                    return null;
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
                    print("Done");
                    User_login();
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 130.h),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.w, top: 10.h),
                      child: Text(
                        "LOGIN",
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
                        borderRadius: BorderRadius.circular(12.sp)),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 90.w),
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
                            return UserSignUp();
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
