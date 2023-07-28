// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

import 'explor_menu_subpage.dart';

class ExplorMenuPage extends StatefulWidget {
  const ExplorMenuPage({super.key});

  @override
  State<ExplorMenuPage> createState() => _GridViewExplorState();
}

class _GridViewExplorState extends State<ExplorMenuPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Plan Your Wedding Online"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 15, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                //color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/Ornate%20Banquets%20and%20hospitality%208.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 15, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/Ornate%20Banquets%20and%20hospitality%209.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 15, bottom: 1, right: 8),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/Ornate%20Banquets%20and%20hospitality%207.JPG"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/1634824462.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/srivastavafilms_7.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 8),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/savvi-photography-lucknow14.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/deepstudiolucknow_7.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/vijaystudiolko_12.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 8),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/vijaystudiolko_1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/randomclickslucknow_7.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/randomclickslucknow_10.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 8),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/randomclickslucknow_11.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/randomclickslucknow_12.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/Hitched_click.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 1, right: 8),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/85mmportrait.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 1, bottom: 10, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/photo2.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 10, right: 1),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/vijaystudiolko_8.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 1, top: 1, bottom: 10, right: 8),
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ExplorMenuSubPage()));
              }),
              child: Container(
                height: h * .100,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wedarranger.com/wed_vendor/upload/savvi-photography-lucknow12.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
