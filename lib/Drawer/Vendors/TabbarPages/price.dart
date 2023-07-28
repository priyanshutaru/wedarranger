// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyPricetab extends StatefulWidget {
  const MyPricetab({super.key});

  @override
  State<MyPricetab> createState() => _MyPricetabState();
}

class _MyPricetabState extends State<MyPricetab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Rental Price",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "2000000",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Veg",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "800 Rs. per plate",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Non-veg",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "900 Rs. per plate",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Seating Capacity",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "200",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Floating Capacity",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "700",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "No of Rooms",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                "15",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
