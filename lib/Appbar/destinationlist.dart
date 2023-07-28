// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class DestiNationList extends StatefulWidget {
  const DestiNationList({super.key});

  @override
  State<DestiNationList> createState() => _DestiNationListState();
}

class _DestiNationListState extends State<DestiNationList> {
  String selectedValue = "Select";
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Select"), value: "Select"),
      DropdownMenuItem(child: Text("Andhra Pradesh"), value: "Andhra Pradesh"),
      DropdownMenuItem(
          child: Text("Arunachal Pradesh"), value: "Arunachal Pradesh"),
      DropdownMenuItem(child: Text("Assam"), value: "Assam"),
      DropdownMenuItem(child: Text("Bihar"), value: "Bihar"),
      DropdownMenuItem(child: Text("Chhattisgarh"), value: "Chhattisgarh"),
      DropdownMenuItem(child: Text("Goa"), value: "Goa"),
      DropdownMenuItem(child: Text("Gujarat"), value: "Gujarat"),
      DropdownMenuItem(child: Text("Haryana"), value: "Haryana"),
      DropdownMenuItem(
          child: Text("Himachal Pradesh"), value: "Himachal Pradesh"),
      DropdownMenuItem(
          child: Text("Jammu and Kashmir"), value: "Jammu and Kashmir"),
      DropdownMenuItem(child: Text("Jharkhand"), value: "Jharkhand"),
      DropdownMenuItem(child: Text("Karnataka"), value: "Karnataka"),
      DropdownMenuItem(child: Text("Kerala"), value: "Kerala"),
      DropdownMenuItem(child: Text("Madhya Pradesh"), value: "Madhya Pradesh"),
      DropdownMenuItem(child: Text("Maharashtra"), value: "Maharashtra"),
      DropdownMenuItem(child: Text("Manipur"), value: "Manipur"),
      DropdownMenuItem(child: Text("Meghalaya"), value: "Meghalaya"),
      DropdownMenuItem(child: Text("Mizoram"), value: "Mizoram"),
      DropdownMenuItem(child: Text("Nagaland"), value: "Nagaland"),
      DropdownMenuItem(child: Text("Odisha"), value: "Odisha"),
      DropdownMenuItem(child: Text("Punjab"), value: "Punjab"),
      DropdownMenuItem(child: Text("Rajasthan"), value: "Rajasthan"),
      DropdownMenuItem(child: Text("Uttar Pradesh"), value: "Uttar Pradesh"),
      DropdownMenuItem(child: Text("Uttarakhand"), value: "Uttarakhand"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: DropdownButton(
            menuMaxHeight: 400,
            isExpanded: true,
            elevation: 8,
            underline: Container(color: Colors.white),
            // underline:
            // hint: Text("Select Here"),
            // borderRadius: BorderRadius.circular(20),
            value: selectedValue,
            items: dropdownItems,
            onChanged: (String? newvalue) {
              setState(() {
                selectedValue = newvalue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
