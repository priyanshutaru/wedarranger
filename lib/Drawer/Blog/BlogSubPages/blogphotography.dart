// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BlogPhotographySubPage extends StatefulWidget {
  const BlogPhotographySubPage({super.key});

  @override
  State<BlogPhotographySubPage> createState() => _BlogPhotographySubPageState();
}

class _BlogPhotographySubPageState extends State<BlogPhotographySubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Colors.black87,
          // title: Text("Blog Pages"),
          ),
      body: Material(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Photography",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                      child: Container(
                        height: 450,
                        width: 500,
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://wedarranger.com//images/photo-banner.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 5, 0, 3),
                          child: Text(
                            "Wedding",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                            "Established in the year 2007, Rajesh Giri Photography in Indira Nagar , Lucknow is a top player in the category Wedding Photographers in the Lucknow. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Lucknow. Over the course of its journey, this business has established a firm foothold in it’s industry. The belief that customer satisfaction is as important as their products and services, have helped this establishment garner a vast base of customers, which continues to grow by the day. This business employs individuals that are dedicated towards their respective roles and put in a lot of effort to achieve the common vision and larger goals of the company. In the near future, this business aims to expand its line of products and services and cater to a larger client base. In Lucknow, this establishment occupies a prominent location in Indira Nagar . It is an effortless task in commuting to this establishment as there are various modes of transport readily available. It is at , Near Gayatri Market, which makes it easy for first-time visitors in locating this establishment. It is known to provide top service in the following categories: Wedding Photographers, Photo Studios, Photographers, Medical Photographers, Nature Photographers, Photographers For Parties, Exhibition Photographers, Beverage Photographers.Established in the year 2007, Rajesh Giri Photography in Indira Nagar , Lucknow is a top player in the category Wedding Photographers in the Lucknow. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Lucknow. Over the course of its journey, this business ..."),
                        // decoration: BoxDecoration(
                        //   color: Colors.red,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
