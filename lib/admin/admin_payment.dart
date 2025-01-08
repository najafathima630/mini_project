import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({super.key});

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCFE2FF),
        appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          leading: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: CircleAvatar(
              backgroundImage: AssetImage("Assets/girl.jpg"),
            ),
          ),
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("Request")
                .where("Payment", whereIn: [4, 5]) //to use or condition
                // .where("Payment",isEqualTo: 5)
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
              var adminpayment = snapshot.data!.docs;
              return ListView.builder(
                itemCount: adminpayment.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.r),
                    child: Card(
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  adminpayment[index]["User_name"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.w),
                                  child: Text(
                                    "10/11/2023",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\u20B9${adminpayment[index]["Work_amount"]}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  adminpayment[index]["work"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  adminpayment[index]["Mech_name"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        width: 350.w,
                        height: 130.h,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
