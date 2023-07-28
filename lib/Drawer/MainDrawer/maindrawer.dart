// ignore_for_file: prefer_const_constructors, unnecessary_new, unused_import, dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedarranger/BottomBar/Home/bottomhome.dart';
import 'package:wedarranger/Drawer/Blog/BlogSubPages/blogwedding.dart';
import 'package:wedarranger/Drawer/Explor_Menus/explor_menu_page.dart';
import 'package:wedarranger/Drawer/Home/drawerhome.dart';
import 'package:wedarranger/Drawer/Vendors/Band/band_page.dart';
import 'package:wedarranger/Drawer/Vendors/Catering/catering_page.dart';
import 'package:wedarranger/Drawer/Vendors/Cenematography/cenematography_page.dart';
import 'package:wedarranger/Drawer/Vendors/Choreography/choreography_page.dart';
import 'package:wedarranger/Drawer/Vendors/DJ/dj_page.dart';
import 'package:wedarranger/Drawer/Vendors/Decorators/decorators_page.dart';
import 'package:wedarranger/Drawer/Vendors/Launge/launge_page.dart';
import 'package:wedarranger/Drawer/Vendors/MakeupArtist/makeupartist_page.dart';
import 'package:wedarranger/Drawer/Vendors/MehandiArtist/mehandiartist_page.dart';
import 'package:wedarranger/Drawer/Vendors/Photographer/photographer_page.dart';
import 'package:wedarranger/Drawer/Vendors/Venue/venue_page.dart';
import 'package:wedarranger/Drawer/Vendors/WeddingPlanner/weddingplanner_page.dart';
import 'package:wedarranger/HomePage.dart';

import '../../BottomBar/Profile/bottomlogin.dart';
import '../Blog/blog_page.dart';
import '../Package/package_page.dart';
import '../Why_Wed_Arranger/why_wed_arranger.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              color: Colors.pink,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    minRadius: 35,
                    maxRadius: 35,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Priyanshu",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            // Divider(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.pop(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new HomePageMain()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ExplorMenuPage()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Explore Menus",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            ExpansionTile(
              title: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(CupertinoIcons.person_3_fill, color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Vendors",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),

              childrenPadding: EdgeInsets.only(left: 25), //children padding
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorVenuePage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          CupertinoIcons.waveform_circle_fill,
                          color: Colors.black87,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Venue",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new VendorPhotographerPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.camera_alt_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Photographer",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new VendorCenematographyPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.video_call),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cinematography",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorMakeupPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.brush),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Makeup Artists",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorMehandiPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.clean_hands_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mehadi Artists",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorLaungePage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.border_bottom_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Lounge",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new VendorWeddingplannerPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.flash_on_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Wedding Planner",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorCateringPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.flatware_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Catering",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorDecoratorPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.rocket_launch_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Decorators",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  new VendorChoreographyPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.shape_line),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Choreography",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorBandPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.panorama_fish_eye_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Band",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new VendorDjPage()));
                    }),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.queue_music_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "DJ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),

                //more child menu
              ],
            ),

            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new DrawerPackages()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.wallet_giftcard_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Package",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new DrawerBlog()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.camera_alt_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Blog",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new BlogWeddingSubPage()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(CupertinoIcons.wand_rays_inverse),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Real Wedding",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => BottomLogin()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.shopify_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => BottomLogin()));
                }),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.question_mark_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Why Wed-arranger",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return Drawer(
    //   backgroundColor: Colors.white,
    //   child: ListView(
    //     padding: EdgeInsets.zero,
    //     // ignore: prefer_const_literals_to_create_immutables
    //     children: [
    //       const DrawerHeader(
    //         decoration: BoxDecoration(
    //           color: Colors.pink,
    //         ),
    //         child: Text('Sign In'),
    //       ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.home,
    //         ),
    //         title: const Text('Home'),
    // onTap: (() {
    //   Navigator.pop(
    //       context,
    //       new MaterialPageRoute(
    //           builder: (context) => new HomePageMain()));
    // }),
    //       ),
    // ListTile(
    //   leading: Icon(
    //     Icons.search,
    //   ),
    //   title: const Text('Explor Menus'),
    //   onTap: (() {
    //     Navigator.push(
    //         context,
    //         new MaterialPageRoute(
    //             builder: (context) => new ExplorMenuPage()));
    //   }),
    // ),
    // ExpansionTile(
    //   title: Text(
    //     "Vendors",
    //     style: TextStyle(color: Colors.black),
    //   ),
    //   leading: Icon(Icons.people_outline_sharp), //add icon
    //   childrenPadding: EdgeInsets.only(left: 35), //children padding
    //   // ignore: prefer_const_literals_to_create_immutables
    //   children: [
    //     ListTile(
    //       title: Text("Venue"),
    //       leading: Icon(Icons.gradient),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorVenuePage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Photographer"),
    //       leading: Icon(Icons.camera_alt),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorPhotographerPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Cinematography"),
    //       leading: Icon(Icons.catching_pokemon_sharp),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorCenematographyPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Makeup Artist"),
    //       leading: Icon(Icons.girl),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorMakeupPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Mehandi Artist"),
    //       leading: Icon(Icons.back_hand),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorMehandiPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Launge"),
    //       leading: Icon(Icons.home_filled),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorLaungePage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Wedding Planner"),
    //       leading: Icon(Icons.play_disabled_outlined),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorWeddingplannerPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Catering"),
    //       leading: Icon(Icons.point_of_sale),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorCateringPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Decoratores"),
    //       leading: Icon(Icons.deck_outlined),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorDecoratorPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Choreography"),
    //       leading: Icon(Icons.crop_outlined),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorChoreographyPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("Band"),
    //       leading: Icon(Icons.bakery_dining_outlined),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorBandPage()));
    //       }),
    //     ),
    //     ListTile(
    //       title: Text("DJ"),
    //       leading: Icon(Icons.music_note),
    //       onTap: (() {
    //         Navigator.push(
    //             context,
    //             new MaterialPageRoute(
    //                 builder: (context) => new VendorDjPage()));
    //       }),
    //     ),

    //     //more child menu
    //   ],
    // );
    //       // ListTile(
    //       //   leading: Icon(
    //       //     Icons.people_alt,
    //       //   ),
    //       //   title: const Text('Vendors'),
    //       //   onTap: (() {
    //       //     Navigator.push(
    //       //         context,
    //       //         new MaterialPageRoute(
    //       //             builder: (context) => new DrawerCourse()));
    //       //   }
    //       //   ),
    //       // ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.leave_bags_at_home,
    //         ),
    //         title: const Text('Packages'),
    //   onTap: (() {
    //     Navigator.push(
    //         context,
    //         new MaterialPageRoute(
    //             builder: (context) => new DrawerPackages()));
    //   }),
    // ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.camera_alt,
    //         ),
    //         title: const Text('Blog'),
    // onTap: (() {
    //   Navigator.push(
    //       context,
    //       new MaterialPageRoute(
    //           builder: (context) => new DrawerBlog()));
    // }),
    //       ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.ring_volume_outlined,
    //         ),
    //         title: const Text('Real Wedding'),
    // onTap: (() {
    //   Navigator.push(
    //       context,
    //       new MaterialPageRoute(
    //           builder: (context) => new BlogWeddingSubPage()));
    // }),
    //       ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.shop,
    //         ),
    //         title: const Text('Shop'),
    // onTap: (() {
    //   Navigator.pop(
    //       context,
    //       new MaterialPageRoute(
    //           builder: (context) => new BottomLogin()));
    // }),
    //       ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.question_mark,
    //         ),
    //         title: const Text('Why Wed Arranger??'),
    //         onTap: (() {
    //           Navigator.push(
    //               context,
    //               new MaterialPageRoute(
    //                   builder: (context) => new WhyWedArranger()));
    //         }),
    //       ),
    //     ],

    //     /* ListTile(
    //         leading: Icon(
    //           Icons.home,
    //         ),
    //         title: const Text('Page 9'),
    //         onTap: () {
    //           Navigator.pop(context);
    //         },
    //       ),
    //       ListTile(
    //         leading: Icon(
    //           Icons.home,
    //         ),
    //         title: const Text('Page 10'),
    //         onTap: () {
    //           Navigator.pop(context);
    //         },
    //       ),*/

    //     // children: [
    //     //   const DrawerHeader(
    //     //     child: Text("Login Here"),
    //     //     decoration: BoxDecoration(
    //     //       color: Colors.red,
    //     //     ),
    //     //   ),

    //     // new ListTile(
    //     //   title: Text("Home"),
    //     //   onTap: (() {
    //     //     Navigator.push(
    //     //         context,
    //     //         new MaterialPageRoute(
    //     //             builder: (context) => new DrawerHome()));
    //     //   }
    //     //   ),
    //     // ),
    //     //   new ListTile(

    //     //     title: Text("Courses"),
    //     //     onTap: (() {
    //     //       Navigator.push(
    //     //           context,
    //     //           new MaterialPageRoute(
    //     //               builder: (context) => new DrawerCourse()));
    //     //     }),
    //     //   ),
    //     //   new ListTile(

    //     //     title: Text("Contact"),
    //     //     onTap: (() {
    //     //       Navigator.push(
    //     //           context,
    //     //           new MaterialPageRoute(
    //     //               builder: (context) => new DrawerContact()));
    //     //     }),
    //     //   ),
    //     //   new ListTile(

    //     //     title: Text("Login"),
    // onTap: (() {
    //   Navigator.push(
    //       context,
    //       new MaterialPageRoute(
    //           builder: (context) => new DrawerLogin()));
    // }),
    //     //   )
    //     // ],
    //   ),
    // );
  }
}
