import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Navigation_bar.dart';

class AdminAddnotification extends StatefulWidget {
  const AdminAddnotification({super.key});

  @override
  State<AdminAddnotification> createState() => _AdminAddnotificationState();
}

class _AdminAddnotificationState extends State<AdminAddnotification> {
  final form_key = GlobalKey<FormState>();
  Future<void> admindata() async {
    FirebaseFirestore.instance
        .collection("admindetails")
        .add({"Heading": matterctrl.text, "content": contentctrl.text});
  }

  TextEditingController matterctrl = TextEditingController();
  TextEditingController contentctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffbacE8F1FF),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return navigation_bar();
              },
            ));
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      body: Form(
        key: form_key,
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 50.h),
                  child: Text(
                    "Enter Matter",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h, right: 40.r),
              child: TextFormField(
                controller: matterctrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                    1.sp,
                  )),
                  prefixIconColor: Colors.white,
                  suffixIconColor: Colors.white,
                  hintText: "Matter",
                  filled: true,
                  fillColor: Colors.white
                ),

              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 50.h),
                  child: Text(
                    "Enter content",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, top: 20.h, right: 40.r),
              child: TextFormField(
                controller: contentctrl,
                 maxLines: 16,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                    1.sp,
                  )),
                  prefixIconColor: Colors.white,
                  suffixIconColor: Colors.white,fillColor: Colors.white,
                  hintText: "content...",
                  filled: true,
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.h,),
              child: ElevatedButton(
                onPressed: () async {
                  if (form_key.currentState!.validate()) {
                    await admindata();
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                  padding: EdgeInsets.zero, // Remove default padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp), // Rounded corners
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.h,
                  width: double.infinity, // Full width for the container
                  child: Text(
                    "Submit",
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
