import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/admin/tap_bar.dart';

import 'mech_rating.dart';
import 'mech_service.dart';
import 'mech_service_home_tabbar.dart';


class navigation_barmechanic extends StatefulWidget {
  const navigation_barmechanic({super.key});

  @override
  State<navigation_barmechanic> createState() =>
      _navigation_barmechanicState();
}

class _navigation_barmechanicState
    extends State<navigation_barmechanic> {
  int _SelectedIndex = 0;

  static  List<dynamic> _widgetoption = [
    mech_service_home(),
    Mech_Service(),
    MechRating(),
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
                icon: Icon(Icons.manage_accounts_sharp,
                color: Colors.black,
                ),
                label: 'Request',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.miscellaneous_services_outlined,
                  color: Colors.black,
                ),
                label: 'service',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.star, color: Colors.black),
              label: 'Rating',
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
