import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNotification extends StatefulWidget {
  const UserNotification({super.key});

  @override
  State<UserNotification> createState() => _UserNotificationState();
}

class _UserNotificationState extends State<UserNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
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
            "Notification",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 20.sp),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("admindetails")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData) {
                    return Center(child: Text("no data found"));
                  }
                  var admin = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: admin.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.r, top: 10.h),
                          child: Container(
                            width: 200.w,
                            height: 200.h,
                            child: Card(
                              child: ListTile(
                                title: Text(
                                  admin[index]["Heading"],
                                ),
                                subtitle: Text(
                                  admin[index]["content"],
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection("admindetails")
                                          .doc(admin[index].id)
                                          .delete();
                                    },
                                    icon: Icon(Icons.delete)),
                              ),
                            ),
                          ));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
