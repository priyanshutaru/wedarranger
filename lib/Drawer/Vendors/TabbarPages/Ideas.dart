import 'package:flutter/material.dart';

class Ideastab extends StatefulWidget {
  const Ideastab({super.key});

  @override
  State<Ideastab> createState() => _IdeastabState();
}

class _IdeastabState extends State<Ideastab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 3 / 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 100,
              color: Colors.deepPurple[100],
            ),
          );
        });
  }
}
