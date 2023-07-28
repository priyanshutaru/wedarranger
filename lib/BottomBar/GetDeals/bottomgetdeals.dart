// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Appbar/categorylist.dart';
import '../../Appbar/destinationlist.dart';

class BottomGetDeals extends StatefulWidget {
  const BottomGetDeals({super.key});

  @override
  State<BottomGetDeals> createState() => _BottomContactState();
}

class _BottomContactState extends State<BottomGetDeals> {
  bool valuefirst = false;
  bool valuesecond = false;

  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: CategoryList(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Function Date",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.all(15),
              // height: MediaQuery.of(context).size.width / 3,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                            // icon: Icon(Icons.calendar_today), //icon of text field
                            border: InputBorder.none,
                            hintText: "Choose Date",
                            // labelText: "Enter Date",
                            suffixIcon: Icon(Icons.today) //label text of field
                            ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate:
                                  DateTime.now().subtract(Duration(days: 0)),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 25, right: 25),
            //   child: DateCalender(),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Destination City",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: DestiNationList(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Requirement",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    maxLines: 5,
                    // obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type a massage...',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.yellow,
                    activeColor: Colors.pink,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  Text(
                    "I accept the",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Terms Conditions",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                  Text(
                    " & ",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              onPressed: () {},
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8),
//                   child: Container(
//                     height: h * .060,
//                     width: w * .20,
//                     decoration: BoxDecoration(
//                       // borderRadius: BorderRadius.circular(45),
//                       shape: BoxShape.circle,
//                       //color: Colors.red,
//                       image: DecorationImage(
//                           image: NetworkImage(
//                               "https://wedarranger.com/wed_vendor/upload/indian-wedding-photography-indian-brides-accessories.jpg.webp"),
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                 ),
//                 // SizedBox(
//                 //   width: 5,
//                 // ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Text(
//                           "Kritika Marrage Lawn",
//                           style: TextStyle(
//                               fontSize: h * .0250, color: Colors.black),
//                         ),
//                         SizedBox(
//                           width: w * 0.050,
//                         ),
//                         Text(
//                           "Follow",
//                           style: TextStyle(
//                               color: Colors.blue[700],
//                               fontWeight: FontWeight.bold),
//                         ),
//                         // ignore: prefer_const_literals_to_create_immutables
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Icon(
//                           Icons.location_on,
//                           color: Colors.black,
//                         ),
//                         Text("Lucknow"),
//                       ],
//                     )
//                   ],
//                 ),

//                 Icon(Icons.more_vert),
//               ],
//             ),
//             SizedBox(
//               height: h * 0.010,
//             ),

//             Container(
//               height: h * 0.400,
//               width: w,
//               // width: MediaQuery.of(context).size.width,
//               // color: Colors.red,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage(
//                         "https://wedarranger.com/wed_vendor/upload/DSC_6569.JPG"),
//                     fit: BoxFit.cover),
//               ),
//             ),
//             // ignore: prefer_const_literals_to_create_immutables
//             Row(
//               // ignore: prefer_const_literals_to_create_immutables
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.favorite_border,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text("Like"),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.sms),
//                 ),
//                 Text("Coments"),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.share),
//                 ),
//                 Text("Share"),
//               ],
//             ),
//             // ignore: prefer_const_literals_to_create_immutables
//             Row(
//               // ignore: prefer_const_literals_to_create_immutables
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text("100  Likes"),
//                 ),
//               ],
//             ),
//             Divider(),
//           ],
//         // ),
