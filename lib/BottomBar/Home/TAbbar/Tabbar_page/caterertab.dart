// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://wedarranger.com/admin/upload/balaji_pht.jpg',
  'https://wedarranger.com/admin/upload/Prakash_Studio.jpg',
  'https://wedarranger.com/admin/upload/Rajesh_pande.jpg',
  'https://wedarranger.com/admin/upload/candid_shutters_Photography.jpg',
];

class CatererTab extends StatefulWidget {
  const CatererTab({super.key});

  @override
  State<CatererTab> createState() => _CatererTabState();
}

class _CatererTabState extends State<CatererTab> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: 10),
        CarouselSlider(
          items: imgList
              .map((item) => Row(
                    children: [
                      Container(
                        height: h * .3,
                        width: w * .5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54, width: 0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * .2,
                              width: w * .5,
                              decoration: BoxDecoration(
                                // color: Colors.cyanAccent,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://wedarranger.com/wed_vendor/upload/unnamed.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "PT Photography",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * .018,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: h * .018,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(
                                        "Harihar Nagar",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: h * .010,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "50000 Rs.",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: h * .015,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            // aspectRatio: 1.0,
            // enlargeCenterPage: false,
            viewportFraction: .6,
          ),
        ),
      ],
    );
  }
}
