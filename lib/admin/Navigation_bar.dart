import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/admin/tap_bar.dart';

import 'admin_homeuser.dart';
import 'admin_notification.dart';
import 'admin_payment.dart';

class navigation_bar extends StatefulWidget {
  const navigation_bar({super.key});

  @override
  State<navigation_bar> createState() =>
      _navigation_barState();
}

class _navigation_barState
    extends State<navigation_bar> {
  int _SelectedIndex = 0;

  static  List<dynamic> _widgetoption = [
    Admin_tabbar(),
    AdminPayment(),
    AdminNotification(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetoption.elementAt(_SelectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black,),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.black,
                ),
                label: 'payment',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.black),
              label: 'Notification',
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _SelectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 4),
    );
  }
}
