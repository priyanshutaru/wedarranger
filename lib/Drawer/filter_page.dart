// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DrawerFilter extends StatefulWidget {
  const DrawerFilter({super.key});

  @override
  State<DrawerFilter> createState() => _MycheckBoxState();
}

class _MycheckBoxState extends State<DrawerFilter> {
  double curent_valu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text("Filter Here"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 40,
                width: 420,

                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "By Price",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.black26),
                //color: Colors.redAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    curent_valu.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Slider(
                      value: curent_valu,
                      min: 0,
                      max: 100000,
                      divisions: 100,
                      //label: curent_valu.toString(),
                      activeColor: Colors.green,
                      inactiveColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          curent_valu = value;
                        });
                      }),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 420,

              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "By Category",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black26),
              //color: Colors.redAccent,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Band"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Catering"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Cinematography"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Decorators"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Launge"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Make-up Artist"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Mehandi Artist"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Photographer"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Venue"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Wedding Choreography"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Text("Wedding Planner"),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 420,

              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Rate Here..",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black26),
              //color: Colors.redAccent,
            ),
            SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  MyStatefulWidget(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[900],
                  ),
                  Icon(Icons.star, color: Colors.yellow[900]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
