import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_project/user/user_list.dart';
import 'package:mini_project/user/user_mechanic_request_list.dart';
import 'package:mini_project/user/user_notification.dart';
import 'package:mini_project/user/user_profile.dart';

class UserMechanicList extends StatefulWidget {
  const UserMechanicList({super.key});

  @override
  State<UserMechanicList> createState() => _UserMechanicListState();
}

class _UserMechanicListState extends State<UserMechanicList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE8F1FF),
          leading: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return UserProfile();
                },
              ));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("Assets/girl.jpg"),
            ),
          ),
          actions: [
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UserNotification();
              },));
            },
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Color(0xffE8F1FF),
                    image: DecorationImage(
                        image: AssetImage("Assets/notification 2.png"))),
              ),
            )
          ],
          title: Container(
            height: 40.h,
            width: 230.w,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Empty username";
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                    40.sp,
                  )),
                  prefixIconColor: Color(0xffCFE2FF),
                  suffixIconColor: Color(0xffCFE2FF),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search",
                  filled: true),
              obscureText: true,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            UserList(), // Call the first class
            UserMechanicRequestList(),
            // Call the second class
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.indigoAccent,
            ),
            tabs: [
              Tab(
                child: Text(
                  'mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Reguest',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
