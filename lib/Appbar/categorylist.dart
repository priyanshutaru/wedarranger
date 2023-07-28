// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  String selectedValue = "Select";
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Select"), value: "Select"),
      DropdownMenuItem(child: Text("Band"), value: "Band"),
      DropdownMenuItem(child: Text("Catering"), value: "Catering"),
      DropdownMenuItem(child: Text("Venue"), value: "Venue"),
      DropdownMenuItem(child: Text("Cinematography"), value: "Cinematography"),
      DropdownMenuItem(child: Text("Makeup Artist"), value: "Makeup Artist"),
      DropdownMenuItem(
          child: Text("Wedding Planner"), value: "Wedding Planner"),
      DropdownMenuItem(child: Text("Launge"), value: "Launge"),
      DropdownMenuItem(child: Text("Decorators"), value: "Decorators"),
      DropdownMenuItem(child: Text("Choreography"), value: "Chorography"),
      DropdownMenuItem(child: Text("DJ"), value: "DJ"),
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
