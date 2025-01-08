import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mini_project/user/user_mechanic_list_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserMechanicDetailePage extends StatefulWidget {
  const UserMechanicDetailePage({
    super.key,
    required this.id,
    required this.name,
    required this.number,
    required this.experience,
    required this.profile,
  });
  final id;
  final name;
  final number;
  final experience;
  final profile;

  @override
  State<UserMechanicDetailePage> createState() =>
      _UserMechanicDetailePageState();
}

class _UserMechanicDetailePageState extends State<UserMechanicDetailePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    user_data();
  }

  Future<void> user_data() async {
    SharedPreferences user_data = await SharedPreferences.getInstance();
    setState(() {
      userid = user_data.getString("userid");
      print("hello");
    });
  }

  var userid;
  String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formattedTime = DateFormat('HH:mm').format(DateTime.now());

  String _selectedItem = 'fuel leaking';

  final List<String> _options = [
    'fuel leaking',
    'battery check',
    'break pad replacement',
  ];
  Future<void> request(
    name,
    number,
    profile_path,
  ) async {
    FirebaseFirestore.instance.collection("Request").add({
      "work": _selectedItem,
      "location": plcetrl.text,
      "mech_profile": widget.id,
      "Time": formattedTime,
      "Date": formattedDate,
      "User_profile": profile_path,
      "User_id": userid,
      "Mech_id": widget.id,
      "Mech_name": widget.name,
      "User_name": name,
      "User_phone": number,
      "Work_amount": 0,
      "Payment": 0,
      "Status": 0,
      "Rating": 0,
      "Reason":0,
    });
    print("success");
    Navigator.of(context).pop();
  }

  final plcetrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              "Needed Service",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 20.sp),
            ),
          ),
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("user_register")
                .doc(userid)
                .get(),
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
              final user = snapshot.data!.data() as Map<String, dynamic>;
              return ListView(
                children: [
                  Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 160.w, top: 50.h),
                          child: Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/bussiness-man 2.png")),
                                  borderRadius: BorderRadius.circular(12.r))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 180.w, top: 2.h),
                          child: Text(
                            widget.name,
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 150.w, top: 2.h),
                          child: Text(
                            widget.number,
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 140.w, top: 2.h),
                          child: Text(
                            widget.experience,
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
                          padding: EdgeInsets.only(left: 50.w, top: 30.h),
                          child: Text(
                            "Add needed Service",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w, top: 20.h),
                      child: Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 270.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Color(0xffCFE2FF)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: DropdownButton<String>(
                                value: _selectedItem,
                                items: _options.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedItem = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.h, left: 50.w),
                      child: Row(
                        children: [
                          Text(
                            "Place",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 16.sp),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffCFE2FF),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide.none),
                              hintText: "Enter your place",
                              hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                            ),
                            controller: plcetrl,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 80.r, left: 80.w, top: 40.h),
                      child: InkWell(
                        onTap: () {
                          request(user["name"], user["number"],
                              user["profile_path"]);
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Rquest",
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
                  ])
                ],
              );
            }));
  }
}
