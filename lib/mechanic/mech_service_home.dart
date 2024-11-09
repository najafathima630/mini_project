import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../admin/admin_home_mechanic.dart';
import '../admin/admin_homeuser.dart';
import 'meach_service_home2.dart';
import 'mech_service_home1.dart';

class mech_service_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE8F1FF),
          leading: CircleAvatar(
            backgroundImage: AssetImage("Assets/Ellipse 9.png"),
          ),
          actions: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("Assets/notification 2.png"))),
            )
          ],
          bottom: TabBar(
            labelColor: Color(0xffE8F1FF),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color(0xffCFE2FF),
            ),
            tabs: [
              Tab(
                child: Text(
                  'Request',
                  style: TextStyle(
                      // color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Accepted',
                  style: TextStyle(
                      // color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MechServiceHome1(), // Call the first class
            MeachServiceHome2(),
            // Call the second class
          ],
        ),
      ),
    );
  }
}
