// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wedarranger/Appbar/locationlist.dart';
import 'package:wedarranger/Appbar/profilepage.dart';
import 'package:wedarranger/BottomBar/CheckDeals/checkdeals.dart';
import 'package:wedarranger/BottomBar/GetDeals/bottomgetdeals.dart';
import 'package:wedarranger/BottomBar/Home/bottomhome.dart';
import 'package:wedarranger/BottomBar/Profile/bottomlogin.dart';
import 'package:wedarranger/BottomBar/Packages/bottompacakges.dart';
import 'package:wedarranger/BottomBar/Profile/bottomprofile.dart';

import 'Drawer/MainDrawer/maindrawer.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  List pages = [
    BottomHome(),
    BottomPackages(),
    BottomGetDeals(),
    BottomCheckDeals(),
    BottomProfile(),
    // BottomLogin(),
  ];

  int current_index = 0;
  void onTap(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            "Wed Arranger",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Center(child: Text("Location")),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 8, 8, 8),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new AppbarLocationList()));
                }),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 5),
            //   child: GestureDetector(
            //     onTap: (() {
            //       Navigator.push(
            //           context,
            //           new MaterialPageRoute(
            //               builder: (context) => new AppbarProfilePage()));
            //     }),
            //     child: CircleAvatar(
            //       backgroundColor: Colors.grey,
            //     ),
            //   ),
            // )
          ],
        ),
        body: pages[current_index],
        drawer: AppDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black54,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: onTap,
            currentIndex: current_index,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp),
                label: 'Package',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.handshake),
                label: 'GetDeals',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.handshake),
                label: 'CheckDeals',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.white,
              ),
            ]));
  }
}
