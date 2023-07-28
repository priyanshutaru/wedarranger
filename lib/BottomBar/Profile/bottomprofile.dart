import 'package:flutter/material.dart';

import '../../Appbar/checkdeals.dart';
import '../../Appbar/dashboard.dart';
import '../../Appbar/favouritelist.dart';
import '../../Appbar/getdeals.dart';

class BottomProfile extends StatefulWidget {
  const BottomProfile({super.key});

  @override
  State<BottomProfile> createState() => _BottomProfileState();
}

class _BottomProfileState extends State<BottomProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new DashboardPage()));
            }),
            child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "DashBoard",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new GetDealsPage()));
            }),
            child: Row(
              children: [
                Icon(Icons.check_circle),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Get Deals",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new CheckDeals()));
            }),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.check_circle),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Check Deals",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new FavouriteListPage()));
            }),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Favourite",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
            // onTap: (() {
            //   Navigator.pop(
            //       context,
            //       new MaterialPageRoute(
            //           builder: (context) => new HomePageMain()));
            // }),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
