import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_project/splash/splash_screen.dart';
import 'package:mini_project/user/mechanic_failed_page.dart';
import 'package:mini_project/user/user_list.dart';
import 'package:mini_project/user/user_login.dart';
import 'package:mini_project/user/user_mechanic_bill_page.dart';
import 'package:mini_project/user/user_mechanic_detaile_page.dart';
import 'package:mini_project/user/user_mechanic_list_appbar.dart';
import 'package:mini_project/user/user_mechanic_request_list.dart';
import 'package:mini_project/user/user_notification.dart';
import 'package:mini_project/user/user_payment.dart';
import 'package:mini_project/user/user_profile.dart';
import 'package:mini_project/user/user_rating_page.dart';
import 'package:mini_project/user_or_mech_page.dart';

import 'admin/Login_page.dart';
import 'admin/Navigation_bar.dart';
import 'admin/admin_addnotification.dart';
import 'admin/admin_home_mechanic.dart';
import 'admin/admin_homeuser.dart';
import 'admin/admin_mechanic.dart';
import 'admin/admin_notification.dart';
import 'admin/admin_payment.dart';
import 'admin/admin_user.dart';
import 'admin/tap_bar.dart';
import 'firebase_options.dart';
import 'mechanic/Navigationbar_mechanic.dart';
import 'mechanic/mech_profile.dart';
import 'mechanic/mech_editprofile.dart';
import 'mechanic/mech_rating.dart';
import 'mechanic/mech_service.dart';
import 'mechanic/mech_service_acceptorreject.dart';
import 'mechanic/mech_service_home_tabbar.dart';
import 'mechanic/mech_status_reject.dart';
import 'mechanic/mech_statuscompleted.dart';
import 'mechanic/mechanic_login.dart';
import 'mechanic/mechanic_signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 892),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.
                //
                // TRY THIS: Try running your application with "flutter run". You'll see
                // the application has a purple toolbar. Then, without quitting the app,
                // try changing the seedColor in the colorScheme below to Colors.green
                // and then invoke "hot reload" (save your changes or press the "hot
                // reload" button in a Flutter-supported IDE, or press "r" if you used
                // the command line to start the app).
                //
                // Notice that the counter didn't reset back to zero; the application
                // state is not lost during the reload. To reset the state, use hot
                // restart instead.
                //
                // This works for code too, not just values: Most code changes can be
                // tested with just a hot reload.
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: SplashScreen(),
            ));
  }
}
