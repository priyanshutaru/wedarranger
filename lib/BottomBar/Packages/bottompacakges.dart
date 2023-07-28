// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:wedarranger/BottomBar/Packages/viewdetails.dart';
import 'package:wedarranger/Drawer/Package/package_page.dart';

import '../../Drawer/filter_page.dart';

class BottomPackages extends StatefulWidget {
  const BottomPackages({super.key});

  @override
  State<BottomPackages> createState() => _BottomPackagesState();
}

class _BottomPackagesState extends State<BottomPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => new DrawerFilter()),
          );
        },
        child: Icon(Icons.filter_alt),
      ),
      body: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
        ),

        body: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // mainAxisSpacing: 10,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return Container(
                // height: 400,
                // width: 100,
                child: Card(
                  // margin: EdgeInsets.all(10),
                  semanticContainer: true,
                  elevation: 5,
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://wedarranger.com/wed_vendor/upload/home_banner5.jpg"),
                              fit: BoxFit.fill),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 4, 10, 4),
                          child: Container(
                            height: 40,
                            width: 40,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.favorite),
                              onPressed: () {
                                // Handle on press event
                              },
                            ),
                          ),
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Text(
                          "Taj Place",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new ViewDetails()));

                            // Add your button action here
                          },
                          child: Text('View Details'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),

        // ignore: prefer_const_literals_to_create_immutables

        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: TextFormField(
        //     keyboardType: TextInputType.text,
        //     decoration: InputDecoration(
        //       labelText: 'Search',
        //       suffixIcon: Icon(Icons.search),
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(20),
        //         borderSide: BorderSide(),
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => new DrawerFilter()),);
        //     },

        //     child: Row(
        //       mainAxisSize: MainAxisSize.min,
        //       // ignore: prefer_const_literals_to_create_immutables
        //       children: [
        //         Text('Filter'), // <-- Text
        //         SizedBox(
        //           width: 5,
        //         ),
        //         Icon(
        //           // <-- Icon
        //           Icons.filter_alt,
        //           size: 24.0,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        // GridView.builder(
        //     itemCount: 20,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3),
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.all(2.0),
        //         child: Container(
        //           height: 100,
        //           color: Colors.deepPurple[100],
        //         ),
        //       );
        //     }),

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       SizedBox(
        //         height: 310,
        //         width: 200,
        //         child: Card(
        //           elevation: 5,
        //           color: Theme.of(context).colorScheme.surfaceVariant,
        //           child: Column(
        //             children: <Widget>[
        //               Container(
        //                 height: 200,
        //                 decoration: BoxDecoration(
        //                   image: DecorationImage(
        //                       image: NetworkImage(
        //                           "https://wedarranger.com/wed_vendor/upload/unnamed%20(1).jpg"),
        //                       fit: BoxFit.cover),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.fromLTRB(8, 4, 10, 4),
        //                   child: Container(
        //                     height: 40,
        //                     width: 40,
        //                     //color: Colors.white,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     child: IconButton(
        //                       icon: const Icon(Icons.favorite),
        //                       onPressed: () {
        //                         // Handle on press event
        //                       },
        //                     ),
        //                   ),
        //                 ),
        //                 alignment: Alignment.topRight,
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        //                 child: Text(
        //                   "Daimond Hall",
        //                   style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.black),
        //                 ),
        //               ),
        //               Container(
        //                 padding: EdgeInsets.all(10),
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   child: Text('View Details'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: 310,
        //         width: 165,
        //         child: Card(
        //           elevation: 5,
        //           color: Theme.of(context).colorScheme.surfaceVariant,
        //           child: Column(
        //             children: <Widget>[
        //               Container(
        //                 height: 200,
        //                 decoration: BoxDecoration(
        //                   image: DecorationImage(
        //                       image: NetworkImage(
        //                           "https://wedarranger.com/wed_vendor/upload/gulmohar-marriage-garden-basadi-katni-caterers-ywonazl0b7.webp"),
        //                       fit: BoxFit.cover),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.fromLTRB(8, 4, 10, 4),
        //                   child: Container(
        //                     height: 40,
        //                     width: 40,
        //                     //color: Colors.white,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     child: IconButton(
        //                       icon: const Icon(Icons.favorite),
        //                       onPressed: () {
        //                         // Handle on press event
        //                       },
        //                     ),
        //                   ),
        //                 ),
        //                 alignment: Alignment.topRight,
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
        //                 child: Text(
        //                   "Happy House",
        //                   style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.black),
        //                 ),
        //               ),
        //               Container(
        //                 padding: EdgeInsets.all(10),
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   child: Text('View Details'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       SizedBox(
        //         height: 310,
        //         width: 200,
        //         child: Card(
        //           elevation: 5,
        //           color: Theme.of(context).colorScheme.surfaceVariant,
        //           child: Column(
        //             children: <Widget>[
        //               Container(
        //                 height: 200,
        //                 decoration: BoxDecoration(
        //                   image: DecorationImage(
        //                       image: NetworkImage(
        //                           "https://wedarranger.com/wed_vendor/upload/home_banner5.jpg"),
        //                       fit: BoxFit.cover),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.fromLTRB(8, 4, 10, 4),
        //                   child: Container(
        //                     height: 40,
        //                     width: 40,
        //                     //color: Colors.white,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     child: IconButton(
        //                       icon: const Icon(Icons.favorite),
        //                       onPressed: () {
        //                         // Handle on press event
        //                       },
        //                     ),
        //                   ),
        //                 ),
        //                 alignment: Alignment.topRight,
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        //                 child: Text(
        //                   "Taj Place",
        //                   style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.black),
        //                 ),
        //               ),
        //               Container(
        //                 padding: EdgeInsets.all(10),
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   child: Text('View Details'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: 310,
        //         width: 165,
        //         child: Card(
        //           elevation: 5,
        //           color: Theme.of(context).colorScheme.surfaceVariant,
        //           child: Column(
        //             children: <Widget>[
        //               Container(
        //                 height: 200,
        //                 decoration: BoxDecoration(
        //                   image: DecorationImage(
        //                       image: NetworkImage(
        //                           "https://wedarranger.com/wed_vendor/upload/slide3.jpeg"),
        //                       fit: BoxFit.cover),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.fromLTRB(8, 4, 10, 4),
        //                   child: Container(
        //                     height: 40,
        //                     width: 40,
        //                     //color: Colors.white,
        //                     decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     child: IconButton(
        //                       icon: const Icon(Icons.favorite),
        //                       onPressed: () {
        //                         // Handle on press event
        //                       },
        //                     ),
        //                   ),
        //                 ),
        //                 alignment: Alignment.topRight,
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        //                 child: Text(
        //                   "DN Lawn",
        //                   style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.black),
        //                 ),
        //               ),
        //               Container(
        //                 padding: EdgeInsets.all(10),
        //                 child: ElevatedButton(
        //                   onPressed: () {
        //                     // Add your button action here
        //                   },
        //                   child: Text('View Details'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
