// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WhyWedArranger extends StatefulWidget {
  const WhyWedArranger({super.key});

  @override
  State<WhyWedArranger> createState() => _nameState();
}

class _nameState extends State<WhyWedArranger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Why Wed Arranger"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "Wedarranger,your Favourite Wedding Planning site.Get Inspired from thousands of weddings and plan accordingly your wedding with thousands of verifed and professionas vendor such as wedding planner, Decorators, Photograpers, Makeup professionals and many more. You can plan your wedding all in your budget with different vendors in our area from your place."),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    // color: Colors.green
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wedarranger.com/assets/img/booking_online.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Book Online",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text("you can easily book us online."),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    //color: Colors.green
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wedarranger.com/assets/img/gif.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Packages",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text("Choose among various packages by vendors"),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    // color: Colors.green
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wedarranger.com/assets/img/search_vendor.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Availability",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                    "Check instant availability of vendors online without wasting time."),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    // color: Colors.green
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wedarranger.com/assets/img/hands.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Trust Vendor",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text("We let you find and book online to various vendors"),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    // color: Colors.green
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wedarranger.com/assets/img/hands.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Review & Rate",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text("Choose vendors on the basis of ratings and reviews"),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    // color: Colors.green
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wedarranger.com/assets/img/location.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Service Location",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text("Choose vendors on the basis of ratings and reviews"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
