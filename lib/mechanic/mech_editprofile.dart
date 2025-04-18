import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mech_profile.dart';

class MechProfile extends StatefulWidget {
  const MechProfile(
      {super.key,
      required this.id,
      required this.name,
      required this.profile,
      required this.phone,
      required this.location,
      required this.experience,
      required this.email,
      required this.shopname});
  final id;
  final location;
  final name;
  final profile;
  final phone;
  final experience;
  final email;
  final shopname;

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  get() {
    namectrl.text = widget.name;
    phnctrl.text = widget.phone;
    mailctrl.text = widget.email;
    expctrl.text = widget.experience;
    shpctrl.text = widget. shopname;
    locactrl.text = widget.location;
  }

  var namectrl = TextEditingController();
  var phnctrl = TextEditingController();
  var mailctrl = TextEditingController();
  var expctrl = TextEditingController();
  var shpctrl = TextEditingController();
  var locactrl = TextEditingController();
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_new))),
        body: Form(
          key: form_key,
          child: Column(
            children: [
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
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
                    child: Text(
                      "name",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(controller: namectrl,
                    cursorHeight: 10.h,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty name";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10.sp,
                      )),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintText: "name",
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
                    child: Text(
                      " Username",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(
                    cursorHeight: 10.h,
                    validator: (value) {
                      if (value!.isEmpty) {
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
                      hintText: " username",
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
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
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(controller: namectrl,
                    cursorHeight: 10.h,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty phonenumber";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10.sp,
                      )),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintText: "Phone number",
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
                    child: Text(
                      "Email",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(controller: mailctrl,
                    cursorHeight: 10.h,
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
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
                    child: Text(
                      "work experience",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(controller: expctrl,
                    cursorHeight: 10.h,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty experience";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10.sp,
                      )),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintText: "Enter your work experience",
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
                    child: Text(
                      "work shop name",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(controller: shpctrl,
                    cursorHeight: 10.h,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty shopname";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10.sp,
                      )),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintText: "Enter your shop name",
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, left: 60.w),
                    child: Text(
                      "your Location",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, top: 3.h, right: 40.r),
                child: Container(
                  width: 300.w,
                  height: 50.h,
                  child: TextFormField(controller: locactrl,
                    cursorHeight: 10.h,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty Location";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                        10.sp,
                      )),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintText: "Enter your Location",
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 80.r, left: 80.w, top: 20.h),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MechEditProfile();
                      },
                    ));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Submit",
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
          ),
        ));
  }
}
