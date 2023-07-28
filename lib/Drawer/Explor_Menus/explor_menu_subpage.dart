// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExplorMenuSubPage extends StatefulWidget {
  const ExplorMenuSubPage({super.key});

  @override
  State<ExplorMenuSubPage> createState() => _ExplorMenuSubPageState();
}

class _ExplorMenuSubPageState extends State<ExplorMenuSubPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Deals Here"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: h * .060,
                    width: w * .10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://wedarranger.com/wed_vendor/upload/indian-wedding-photography-indian-brides-accessories.jpg.webp"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 5,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Kritika Marrage Lawn",
                          style: TextStyle(
                              fontSize: h * .0250, color: Colors.black),
                        ),
                        SizedBox(
                          width: w * 0.050,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text("Lucknow"),
                      ],
                    )
                  ],
                ),

                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(
              height: h * 0.010,
            ),

            Container(
              height: h * 0.400,
              width: w,
              // width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wedarranger.com/wed_vendor/upload/DSC_6569.JPG"),
                    fit: BoxFit.cover),
              ),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
                Text("Like"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.sms),
                ),
                Text("Coments"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Text("Share"),
              ],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("100  Likes"),
                ),
              ],
            ),
            SizedBox(height: h * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: h * .060,
                    width: w * .10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://wedarranger.com/wed_vendor/upload/indian-wedding-photography-indian-brides-accessories.jpg.webp"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 5,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Kritika Marrage Lawn",
                          style: TextStyle(
                              fontSize: h * .0250, color: Colors.black),
                        ),
                        SizedBox(
                          width: w * 0.050,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text("Lucknow"),
                      ],
                    )
                  ],
                ),

                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(
              height: h * 0.010,
            ),

            Container(
              height: h * 0.400,
              width: w,
              // width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wedarranger.com/wed_vendor/upload/DSC_6569.JPG"),
                    fit: BoxFit.cover),
              ),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
                Text("Like"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.sms),
                ),
                Text("Coments"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Text("Share"),
              ],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("100  Likes"),
                ),
              ],
            ),
            SizedBox(height: h * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: h * .060,
                    width: w * .10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://wedarranger.com/wed_vendor/upload/indian-wedding-photography-indian-brides-accessories.jpg.webp"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 5,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Kritika Marrage Lawn",
                          style: TextStyle(
                              fontSize: h * .0250, color: Colors.black),
                        ),
                        SizedBox(
                          width: w * 0.050,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        Text("Lucknow"),
                      ],
                    )
                  ],
                ),

                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(
              height: h * 0.010,
            ),

            Container(
              height: h * 0.400,
              width: w,
              // width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wedarranger.com/wed_vendor/upload/DSC_6569.JPG"),
                    fit: BoxFit.cover),
              ),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
                Text("Like"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.sms),
                ),
                Text("Coments"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Text("Share"),
              ],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("100  Likes"),
                ),
              ],
            ),
            SizedBox(height: h * .03),
          ],
        ),
      ),
    );
  }
}
