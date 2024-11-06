import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechProfile extends StatefulWidget {
  const MechProfile({super.key});

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        body: Form(
          key: form_key,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 160.w),
                    child: CircleAvatar(
                      radius: 60.r,
                      backgroundImage: AssetImage("Assets/profile.png"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
