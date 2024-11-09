import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMechanicList extends StatefulWidget {
  const UserMechanicList({super.key});

  @override
  State<UserMechanicList> createState() => _UserMechanicListState();
}

class _UserMechanicListState extends State<UserMechanicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color(0xffE8F1FF),
      leading: CircleAvatar(
        backgroundImage: AssetImage("Assets/girl.jpg"),
      ),
      actions: [
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: Color(0xffE8F1FF),
              image: DecorationImage(
                  image: AssetImage("Assets/notification 2.png"))),
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
    ));
  }
}
