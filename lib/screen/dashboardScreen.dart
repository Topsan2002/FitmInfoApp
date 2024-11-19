import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/activityScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/locationScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:flutter_application_1/screen/roomImgScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/dash/1.jpeg',
      'assets/images/dash/2.jpeg',
      'assets/images/dash/3.jpeg',
      'assets/images/dash/4.jpeg',
    ];
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ภาควิชาเทคโนโลยีสารสนเทศ",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (Route route) => false);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          //navigation bar
          icons: iconList, //list of icons

          inactiveColor: Colors.white,
          activeColor: Colors.white,
          activeIndex: 0,
          iconSize: 30,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          backgroundColor: HexColor("0080C7"),
          onTap: (index) => {
                if (index == 0)
                  {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //       builder: (context) => const FitmItInfo()),
                    // )
                  }
                else if (index == 1)
                  {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const PersonScreen()),
                    )
                  }
                else if (index == 2)
                  {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const CourseScreen()),
                    )
                  }
                else if (index == 3)
                  {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const NewsScreen()),
                    )
                  }
              }),
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList.map<Widget>((item) {
                  return Container(
                    // height: 600,
                    margin: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              item,
                              fit: BoxFit.fill,
                              width: double.infinity,
                              // height: 250,

                              // height: 500,
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),
                            ),
                          ],
                        )),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      btnDd(
                        onPressed: () {
                          // Navigator.pop(context);
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const FitmItInfo()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.list_outlined,
                          size: 50,
                        ),
                        text: "ข้อมูลภาควิชา",
                      ),
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const PersonScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.groups_2,
                          size: 50,
                        ),
                        text: "บุคคลากร",
                      ),
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const CourseScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.menu_book_sharp,
                          size: 50,
                        ),
                        text: "หลักสูตร",
                      ),
                      // TextButton(onPressed: onPressed, child: child)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const RoomImgScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.door_front_door,
                          size: 50,
                        ),
                        text: "ห้องปฏิบัติการ",
                      ),
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const LocationScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.location_on,
                          size: 50,
                        ),
                        text: "สถานที่",
                      ),
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const ActivityScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.photo_size_select_actual_rounded,
                          size: 50,
                        ),
                        text: "กิจกรรม",
                      ),
                      // TextButton(onPressed: onPressed, child: child)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const NewsScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.newspaper,
                          size: 50,
                        ),
                        text: "ข่าวสาร",
                      ),

                      btnDd(
                        onPressed: () {
                          exit(0);
                        },
                        iconuser: const Icon(
                          Icons.logout,
                          size: 50,
                        ),
                        text: "ออก",
                      ),
                      // TextButton(onPressed: onPressed, child: child)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class loddingImgae extends StatelessWidget {
  final ImageChunkEvent loadingProgress;
  const loddingImgae({super.key, required this.loadingProgress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("กำลังโหลด...")
        ],
      ),
    );
  }
}
