import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_mechanic.dart';

class AdminHome1 extends StatefulWidget {
  const AdminHome1({super.key});

  @override
  State<AdminHome1> createState() => _AdminHome1State();
}

class _AdminHome1State extends State<AdminHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: Column(children: [
        Expanded(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("mechanic_register")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData) {
                    return Center(child: Text("no data found"));
                  }
                  var mechan = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: mechan.length,
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
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return AdminMechanic(
                                              id: mechan[index].id,
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
                                                            mechan[index]
                                                                ["name"],
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
                                                            mechan[index]
                                                                ["number"],
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                          ),
                                                          // ),IconButton(
                                                          //     onPressed: () {
                                                          //       FirebaseFirestore.instance
                                                          //           .collection("mechanic_register")
                                                          //           .doc(mechan[index].id)
                                                          //           .delete();
                                                          //     },
                                                          //     icon: Icon(Icons.delete)),
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
                                                            mechan[index]
                                                                ["experience"]??"no data",
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
                }))
      ]),
    );
  }
}
