// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wedarranger/Appbar/getdeals.dart';
import 'package:wedarranger/BottomBar/Home/TAbbar/Tabbar_page/caterertab.dart';
import 'package:wedarranger/BottomBar/Home/TAbbar/Tabbar_page/photographertab.dart';
import 'package:wedarranger/BottomBar/Home/TAbbar/Tabbar_page/weddingplannertab.dart';
import 'package:wedarranger/Drawer/Vendors/Band/band_page.dart';

final List<String> imgList = [
  'https://wedarranger.com/admin/upload/balaji_pht.jpg',
  'https://wedarranger.com/admin/upload/Prakash_Studio.jpg',
  'https://wedarranger.com/admin/upload/Rajesh_pande.jpg',
  'https://wedarranger.com/admin/upload/candid_shutters_Photography.jpg',
];

class BottomHome extends StatefulWidget {
  const BottomHome({super.key});

  @override
  State<BottomHome> createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    vendorlist(img, text) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new VendorBandPage()));
          },
          child: Container(
            height: h * 0.1,
            width: w * 0.2,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 243, 243),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: h * 0.1,
                  width: w * 0.17,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    // borderRadius: BorderRadius.circular(100),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: h * 0.03,
                  width: w * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        //appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: h * 0.3,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/images/banner-mob.jpg"),
                      fit: BoxFit.cover),
                ),
                // color: Colors.indigoAccent,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: h * 0.11),
                color: Colors.white,
                child: GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new GetDealsPage()));
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * 0.04,
                        width: w * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          color: Colors.pink,
                        ),
                        child: Center(
                          child: Text(
                            "Get 100's of Deals Here",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.04,
                        width: w * 0.09,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.pink, width: 1),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          color: Colors.white,
                        ),
                        // color: Colors.red,
                        child: Icon(Icons.handshake_outlined),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find Best Venue Here",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    //height: MediaQuery.of(context).size.height,
                    //width: MediaQuery.of(context).size.width,
                    height: h * 0.170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        vendorlist(
                          "https://wedarranger.com/admin/upload/Mehndi-design.jpeg",
                          "Mehandi",
                        ),
                        vendorlist(
                          "https://wedarranger.com/admin/upload/catering.jpg",
                          "Decorators",
                        ),
                        vendorlist(
                          "https://wedarranger.com/admin/upload/choreography.jpg",
                          "DJ",
                        ),
                        vendorlist(
                          "https://wedarranger.com/admin/upload/dj.jpg",
                          "Venue",
                        ),
                        vendorlist(
                          "https://wedarranger.com/admin/upload/Eyhats.jpg",
                          "PhotoGraphy",
                        ),
                      ],
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Browse Packages",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    items: imgList
                        .map((item) => Row(
                              children: [
                                Container(
                                  child: Center(
                                    child: Image.network(
                                      item,
                                      fit: BoxFit.cover,
                                      width: 230,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: h * .170,
                                  width: w * .200,
                                  color: Color.fromARGB(255, 220, 192, 142),
                                  child: Center(
                                    child: Text(
                                      " Start Rs. 25000",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ))
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 4.0,
                      enlargeCenterPage: true,
                    ),
                  ),

                  //complex slider start form here

                  // TabBar(
                  //   labelColor: Colors.black,
                  //   dividerColor: Colors.black,
                  //   // ignore: prefer_const_literals_to_create_immutables
                  //   tabs: [
                  //     Tab(text: "Photographer"),
                  //     Tab(
                  //       text: "Wedding Planner",
                  //     ),
                  //     Tab(
                  //       text: "Caterer",
                  //     ),
                  //   ],
                  // ),
                  // Expanded(
                  //   // ignore: prefer_const_literals_to_create_immutables
                  //   child: TabBarView(children: [
                  //     PhotographerTab(),
                  //     Weddingplannertab(),
                  //     CatererTab(),
                  //   ]),
                  // ),

                  // Expanded(child: TabBarPage()),

                  SizedBox(
                    height: h * 0.04,
                  ),

                  //here we have to add the tab section and also we have to add the auto slider so don't forget it
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Papular Vendors",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),

                  // TabBarPage(),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: h * 0.25,
                          width: w * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.blueGrey
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://wedarranger.com//images/makeup1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: h * 0.25,
                          // width: 200,
                          child: Text(
                              "Yes it's your day,hire professional wedding makeup artist for bridal makeup.Compare different makeup professionals on behalf of rating & review, portfolio and packages."),
                          // color: Colors.limeAccent,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: h * 0.25,
                          width: w * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.blueGrey
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://wedarranger.com//images/photo-banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: h * 0.25,
                          // width: 200,
                          child: Text(
                              "Capture and store your wedding memories for a last long with professional wedding photoshoot.Book your wedding photographer just in simple and easy way."),
                          // color: Colors.limeAccent,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Get Best",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Deals",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.pink),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * 0.2,
                      width: w,
                      // color: Colors.indigoAccent,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://wedarranger.com/images/get_mob.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),

                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Ideas",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //height: MediaQuery.of(context).size.height,
                    //width: MediaQuery.of(context).size.width,
                    height: h * .20,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: InkWell(
                        //     child: Column(
                        //       children: [
                        //         Container(
                        //           height: h * 0.15,
                        //           width: w * 0.25,
                        //           decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(5),
                        //             border: Border.all(
                        //                 color: Colors.black54, width: 2),
                        //           ),
                        //           child: SizedBox(
                        //             height: h * 0.05,
                        //             width: w * 0.25,
                        //             child: Image(
                        //               image: NetworkImage(
                        //                   "https://wedarranger.com/admin/upload/gao_hotel.jpg"),
                        //               fit: BoxFit.fill,
                        //               colorBlendMode: BlendMode.darken,
                        //               color: Colors.black87,
                        //             ),
                        //             // decoration: BoxDecoration(
                        //             //   // color: Colors.blue[200],
                        //             //   borderRadius: BorderRadius.circular(10),
                        //             //   image: const DecorationImage(
                        //             //     image: NetworkImage(
                        //             //         "https://wedarranger.com/admin/upload/gao_hotel.jpg"),

                        //             //     fit: BoxFit.cover,

                        //             //   ),
                        //             // ),
                        //             // child: Column(
                        //             //   mainAxisAlignment: MainAxisAlignment.end,
                        //             //   children: const <Widget>[
                        //             //     Text(
                        //             //       'Internationl Destination',
                        //             //       style: TextStyle(
                        //             //         fontSize: 15,
                        //             //         color: Colors.black,
                        //             //         // fontWeight: FontWeight.bold,
                        //             //       ),
                        //             //     ),
                        //             //   ],
                        //             // ),
                        //           ),
                        //         ),
                        //         Text(
                        //           "Internationl Destination",
                        //           style: TextStyle(color: Colors.white),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                // color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(10),
                                // backgroundBlendMode: Blen,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://wedarranger.com/admin/upload/kerela_honeymoon_destiantion.jpg"),
                                  fit: BoxFit.cover,

                                  // colorFilter:
                                ),
                                // backgroundBlendMode: BlendMode.darken,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Destination Place',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        backgroundColor: Colors.black45

                                        // fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                // color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://wedarranger.com/admin/upload/aataj.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const <Widget>[
                                  Text(
                                    'Indian Place',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        backgroundColor: Colors.black45
                                        // fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                // color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://wedarranger.com/admin/upload/Balii.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const <Widget>[
                                  Text(
                                    'Indian Place',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        backgroundColor: Colors.black45
                                        // fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                              height: h * 0.1,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                // color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://wedarranger.com/admin/upload/entrance_(2).jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const <Widget>[
                                  Text(
                                    'Indian Place',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        backgroundColor: Colors.black45
                                        // fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // TabBarPage(),
            ],
          ),
        ),
      ),
    );
  }
}
