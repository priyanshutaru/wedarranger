// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class VendorForm extends StatefulWidget {
  const VendorForm({super.key});

  @override
  State<VendorForm> createState() => _BandSubPageSendMassageFormState();
}

class _BandSubPageSendMassageFormState extends State<VendorForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Massage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          // height: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      label: Text("Name"),
                      hintText: "Enter Your Name",
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      label: Text("Address"),
                      hintText: "Enter Your Address",
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      label: Text("Mobile Numer"),
                      hintText: "Enter Your Mobile Number",
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      label: Text("Function Date"),
                      hintText: "Enter Your Function Date",
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      label: Text("Needs"),
                      hintText: "Enter Your Needs & Requirments",
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, onPrimary: Colors.white),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Send Massage'), // <-- Text
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
