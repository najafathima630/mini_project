import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_user.dart';

class AdminHomeuser extends StatefulWidget {
  const AdminHomeuser({super.key});

  @override
  State<AdminHomeuser> createState() => _AdminHomeuserState();
}

class _AdminHomeuserState extends State<AdminHomeuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("user_register")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
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
                var adimnn = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: adimnn.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                      child: Card(
                          color: Colors.white,
                          child: Container(
                            width: 200,
                            height: 100,
                            child: Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return AdminUser(
                                            id: adimnn[index].id,
                                          );
                                        },
                                      ));
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.w, right: 30.r),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10.h, left: 10.w),
                                                child: Container(
                                                  height: 50.h,
                                                  width: 50.w,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "Assets/man.png"))),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 10.w,
                                                            top: 10.h),
                                                        child: Text(
                                                          adimnn[index]["name"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                              fontSize:
                                                              18.sp),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 20.w),
                                                        child: Text(
                                                          adimnn[index]
                                                          ["location"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                              fontSize:
                                                              16.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 20.w),
                                                        child: Text(
                                                          adimnn[index]
                                                          ["number"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                              fontSize:
                                                              16.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 10.w),
                                                        child: Text(
                                                          adimnn[index]
                                                          ["email"],
                                                          style: GoogleFonts
                                                              .poppins(
                                                              fontSize:
                                                              16.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          )),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}