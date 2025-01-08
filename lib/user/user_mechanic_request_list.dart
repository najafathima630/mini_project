import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/user/user_mechanic_bill_page.dart';
import 'package:mini_project/user/user_rating_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mechanic_failed_page.dart';

class UserMechanicRequestList extends StatefulWidget {
  const UserMechanicRequestList({super.key});

  @override
  State<UserMechanicRequestList> createState() =>
      _UserMechanicRequestListState();
}

class _UserMechanicRequestListState extends State<UserMechanicRequestList> {
  void initState() {
    // TODO: implement initState
    super.initState();
    user_data();
  }

  Future<void> user_data() async {
    SharedPreferences user_data = await SharedPreferences.getInstance();
    setState(() {
      userid = user_data.getString("userid");
    });
    print("success");
  }

  var userid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("Request")
                  .where("User_id", isEqualTo: userid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var user_request = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: user_request.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10, right: 20, left: 10),
                      child: InkWell(
                        onTap: () {
                          user_request[index]["Payment"] == 5
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("payed"),
                                    backgroundColor: Colors.black,
                                  ),
                                )
                              : user_request[index]["Payment"] == 4
                                  ? Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return MechanicFailedPage(id:user_request[index].id,name:user_request[index]["Mech_name"]);
                                      },
                                    ))
                                  : user_request[index]["Payment"] == 3
                                      ? Navigator.of(context)
                                          .push(MaterialPageRoute(
                                          builder: (context) {
                                            return UserMechanicBillPage(
                                              id: user_request[index].id,
                                              name: user_request[index]
                                                  ["Mech_name"],
                                            );
                                          },
                                        ))
                                      : user_request[index]["Status"] == 2
                                          ? ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                    "rejected by mechanic"),
                                                backgroundColor: Colors.black,
                                              ),
                                            )
                                          : user_request[index]["Status"] == 1
                                              ? ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                        "Accepted by ${user_request[index]["Mech_name"]}"),
                                                    backgroundColor:
                                                        Colors.black,
                                                  ),
                                                )
                                              : ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                        "waiting for the approvel"),
                                                    backgroundColor:
                                                        Colors.black,
                                                  ),
                                                );
                        },
                        child: Container(
                          height: 150.h,
                          width: 200.w,
                          child: Card(
                            color: Color(0xffCFE2FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      user_request[index]["Mech_name"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      user_request[index]["Date"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      user_request[index]["Time"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      user_request[index]["work"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: user_request[index]["Payment"] == 5
                                        ? Container(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20.w),
                                              child: Text(
                                                "paid",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            width: 110.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.r)),
                                          )
                                        : user_request[index]["Payment"] == 4
                                            ? Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10.w),
                                                child: Container(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w),
                                                    child: Text(
                                                      "faild",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                  width: 110.w,
                                                  height: 30.h,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffCD4949),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.r)),
                                                ))
                                            : user_request[index]["Payment"] ==
                                                    3
                                                ? Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.w),
                                                    child: Container(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 20.w),
                                                        child: Text(
                                                          "Pay",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ),
                                                      width: 110.w,
                                                      height: 30.h,
                                                      decoration: BoxDecoration(
                                                          color: Colors
                                                              .green.shade900,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.r)),
                                                    ))
                                                : user_request[index]
                                                            ["Status"] ==
                                                        2
                                                    ? Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 50.w),
                                                        child: Container(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 20.w),
                                                            child: Text(
                                                              "Rejected",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                          width: 110.w,
                                                          height: 30.h,
                                                          decoration: BoxDecoration(
                                                              color: Color(
                                                                  0xffCD4949),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.r)),
                                                        ))
                                                    : user_request[index]
                                                                ["Status"] ==
                                                            1
                                                        ? Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 10.w),
                                                            child: Container(
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 20
                                                                            .w),
                                                                child: Text(
                                                                  "Accepted",
                                                                  style: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ),
                                                              width: 110.w,
                                                              height: 30.h,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.r)),
                                                            ))
                                                        : Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 40.w),
                                                            child: Container(
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 20
                                                                            .w),
                                                                child: Text(
                                                                  "Pending",
                                                                  style: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          16.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                ),
                                                              ),
                                                              width: 110.w,
                                                              height: 30.h,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .grey,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.r)),
                                                            ),
                                                          )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
        ),
      ]),
    );
  }
}
