// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Myabouttab extends StatefulWidget {
  const Myabouttab({super.key});

  @override
  State<Myabouttab> createState() => _MyabouttabState();
}

class _MyabouttabState extends State<Myabouttab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Text(
              " SKS Photography for your wedding and all other occasions. We are Lucknow based Wedding photography company that serving since 2010 in Lucknow and Uttar Pradesh. We means our dedicated and professional team of photographer that don not let miss your important wedding moments. We offer professional Wedding shoot, Pre wedding Shoot. Hundreds of our customer given a positive review that appreciates and Motivates us to work and grow. ",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
