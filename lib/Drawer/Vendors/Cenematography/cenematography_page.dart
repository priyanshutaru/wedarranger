// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../../filter_page.dart';
import '../subpage.dart';

class VendorCenematographyPage extends StatefulWidget {
  const VendorCenematographyPage({super.key});

  @override
  State<VendorCenematographyPage> createState() =>
      _VendorCenematographyPageState();
}

class _VendorCenematographyPageState extends State<VendorCenematographyPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cinematography"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => new DrawerFilter()),
          );
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.filter_alt),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h * 0.45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w * 1,
                      color: Colors.purpleAccent,
                      child: Stack(
                        children: [
                          Positioned(
                            // top: 10,
                            // left: w,
                            top: h * 0.01,
                            left: w * .82,
                            child: Container(
                              height: h * 0.05,
                              width: w * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black45,
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: h * 0.05,
                            width: w * 0.3,
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.bolt_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Extreme",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 4),
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new VendorSubPage()));
                            }),
                            child: Text(
                              "Daimond Marrage Hall",
                              style: TextStyle(
                                  color: Colors.blue[400], fontSize: 20),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text(
                          "Hazaratganj",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    DottedLine(),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Starting Price",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Rs 4500",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h * 0.45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w * 1,
                      color: Colors.purpleAccent,
                      child: Stack(
                        children: [
                          Positioned(
                            // top: 10,
                            // left: w,
                            top: h * 0.01,
                            left: w * .82,
                            child: Container(
                              height: h * 0.05,
                              width: w * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black45,
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: h * 0.05,
                            width: w * 0.3,
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.bolt_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Extreme",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 4),
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new VendorSubPage()));
                            }),
                            child: Text(
                              "Daimond Marrage Hall",
                              style: TextStyle(
                                  color: Colors.blue[400], fontSize: 20),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text(
                          "Hazaratganj",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    DottedLine(),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Starting Price",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Rs 4500",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h * 0.45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w * 1,
                      color: Colors.purpleAccent,
                      child: Stack(
                        children: [
                          Positioned(
                            // top: 10,
                            // left: w,
                            top: h * 0.01,
                            left: w * .82,
                            child: Container(
                              height: h * 0.05,
                              width: w * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black45,
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: h * 0.05,
                            width: w * 0.3,
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.bolt_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Extreme",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 4),
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new VendorSubPage()));
                            }),
                            child: Text(
                              "Daimond Marrage Hall",
                              style: TextStyle(
                                  color: Colors.blue[400], fontSize: 20),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text(
                          "Hazaratganj",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    DottedLine(),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Starting Price",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Rs 4500",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: h * 0.45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w * 1,
                      color: Colors.purpleAccent,
                      child: Stack(
                        children: [
                          Positioned(
                            // top: 10,
                            // left: w,
                            top: h * 0.01,
                            left: w * .82,
                            child: Container(
                              height: h * 0.05,
                              width: w * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black45,
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: h * 0.05,
                            width: w * 0.3,
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.bolt_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Extreme",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 4),
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          new VendorSubPage()));
                            }),
                            child: Text(
                              "Daimond Marrage Hall",
                              style: TextStyle(
                                  color: Colors.blue[400], fontSize: 20),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text(
                          "Hazaratganj",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    DottedLine(),
                    SizedBox(
                      height: h * 0.009,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Starting Price",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, top: 4),
                      child: Text(
                        "Rs 4500",
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
