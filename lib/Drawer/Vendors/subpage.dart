// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wedarranger/Drawer/Vendors/TabbarPages/Ideas.dart';
import 'package:wedarranger/Drawer/Vendors/TabbarPages/about.dart';
import 'package:wedarranger/Drawer/Vendors/TabbarPages/price.dart';
import 'package:wedarranger/Drawer/Vendors/TabbarPages/review.dart';
import 'package:wedarranger/Drawer/Vendors/form.dart';

class VendorSubPage extends StatefulWidget {
  const VendorSubPage({super.key});

  @override
  State<VendorSubPage> createState() => _VendorSubPageState();
}

class _VendorSubPageState extends State<VendorSubPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://wedarranger.com/wed_vendor/upload/punjabi-dhol-band-baja-group-reis-magos-goa-wedding-bands-ubal2.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Nawabi Band",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Icon(Icons.location_on),
                            Text(
                              "Lucknow",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.location_on),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Icon(
                            //   Icons.favorite_border,
                            //   color: Colors.black,
                            // ),
                            // Text(
                            //   "0",
                            //   style: TextStyle(
                            //       color: Colors.black, fontWeight: FontWeight.bold),
                            // ),
                            Icon(
                              Icons.star_border,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 50,
                    //   width: 180,
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    //     child: Text(
                    //       'SendMassage',
                    //       style: TextStyle(fontSize: 20, color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 40,
                      // width: 145,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => new VendorForm(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[700],
                            onPrimary: Colors.white),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Send Massage',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              TabBar(
                labelColor: Colors.black,
                dividerColor: Colors.black,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(text: "Ideas"),
                  Tab(
                    text: "Price",
                  ),
                  Tab(
                    text: "Review",
                  ),
                  Tab(
                    text: "About",
                  ),
                ],
              ),
              Expanded(
                // ignore: prefer_const_literals_to_create_immutables
                child: TabBarView(children: [
                  Ideastab(),
                  MyPricetab(),
                  Reviewtab(),
                  Myabouttab(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Remake"),
    //   ),
    //   body: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(15.0),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               height: h * 0.1,
    //               width: w * 0.2,
    //               decoration: BoxDecoration(
    //                 shape: BoxShape.circle,
    //                 //color: Colors.red,
    //                 image: DecorationImage(
    //                     image: NetworkImage(
    //                         "https://wedarranger.com/wed_vendor/upload/punjabi-dhol-band-baja-group-reis-magos-goa-wedding-bands-ubal2.jpg"),
    //                     fit: BoxFit.cover),
    //               ),
    //             ),
    //             Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               // ignore: prefer_const_literals_to_create_immutables
    //               children: [
    //                 Text(
    //                   "Nawabi Band",
    //                   style: TextStyle(
    //                       color: Colors.black, fontWeight: FontWeight.bold),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   // ignore: prefer_const_literals_to_create_immutables
    //                   children: [
    //                     // Icon(Icons.location_on),
    //                     Text(
    //                       "Lucknow",
    //                       style: TextStyle(
    //                         color: Colors.black,
    //                       ),
    //                     ),
    //                     Icon(Icons.location_on),
    //                   ],
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   // ignore: prefer_const_literals_to_create_immutables
    //                   children: [
    //                     // Icon(
    //                     //   Icons.favorite_border,
    //                     //   color: Colors.black,
    //                     // ),
    //                     // Text(
    //                     //   "0",
    //                     //   style: TextStyle(
    //                     //       color: Colors.black, fontWeight: FontWeight.bold),
    //                     // ),
    //                     Icon(
    //                       Icons.star_border,
    //                       color: Colors.black,
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //             // SizedBox(
    //             //   height: 50,
    //             //   width: 180,
    //             //   child: ElevatedButton(
    //             //     onPressed: () {},
    //             //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    //             //     child: Text(
    //             //       'SendMassage',
    //             //       style: TextStyle(fontSize: 20, color: Colors.white),
    //             //     ),
    //             //   ),
    //             // ),
    //             SizedBox(
    //               height: 40,
    //               // width: 145,
    //               child: ElevatedButton(
    //                 onPressed: () {
    //                   // Navigator.push(
    //                   //   context,
    //                   //   MaterialPageRoute(
    //                   //     builder: (context) => new VendorForm(),
    //                   //   ),
    //                   // );
    //                 },
    //                 style: ElevatedButton.styleFrom(
    //                     primary: Colors.green[700], onPrimary: Colors.white),
    //                 child: Row(
    //                   mainAxisSize: MainAxisSize.min,
    //                   // ignore: prefer_const_literals_to_create_immutables
    //                   children: [
    //                     Text(
    //                       'Send Massage',
    //                       style: TextStyle(fontSize: 12, color: Colors.white),
    //                     ), // <-- Text
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       TabBar(
    //         labelColor: Colors.black,
    //         dividerColor: Colors.black,
    //         // ignore: prefer_const_literals_to_create_immutables
    //         tabs: [
    //           Tab(
    //             icon: Icon(
    //               Icons.add_box,
    //               color: Colors.black,
    //             ),
    //           ),
    //           Tab(
    //             icon: Icon(
    //               Icons.video_call,
    //               color: Colors.black,
    //             ),
    //           ),
    //           Tab(
    //             icon: Icon(
    //               Icons.portrait_sharp,
    //               color: Colors.black,
    //             ),
    //           ),
    //           Tab(
    //             icon: Icon(
    //               Icons.portrait_sharp,
    //               color: Colors.black,
    //             ),
    //           ),
    //         ],
    //       ),
    //       Expanded(
    //         // ignore: prefer_const_literals_to_create_immutables
    //         child: TabBarView(children: [
    //           Mytab1(),
    //           Mytab2(),
    //           Mytab3(),
    //           Mytab4(),
    //         ]),
    //       )
    //     ],
    //   ),
    // );
  }
}
