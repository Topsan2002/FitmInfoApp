import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/locationScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class RoomImgScreen extends StatelessWidget {
  const RoomImgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];

    final List<ImagesRoomData> imgB401 = [
      ImagesRoomData(
        file: "assets/images/rooms/B401A_2.JPG",
        name: "B401A ด้านหน้า",
      ),
      ImagesRoomData(
        file: "assets/images/rooms/B401A_1.JPG",
        name: "B401A ด้านหลัง",
      ),
    ];
    final List<ImagesRoomData> imgB401B = [
      ImagesRoomData(
        file: "assets/images/rooms/B401B_2.JPG",
        name: "B401B ด้านหน้า",
      ),
      ImagesRoomData(
        file: "assets/images/rooms/B401B_1.JPG",
        name: "B401B ด้านหลัง",
      ),
    ];

    final List<ImagesRoomData> imgB409 = [
      ImagesRoomData(
        file: "assets/images/rooms/B409_2.JPG",
        name: "B409 ด้านหน้า",
      ),
      ImagesRoomData(
        file: "assets/images/rooms/B409_1.JPG",
        name: "B409 ด้านหลัง",
      ),
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
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const DashBoardScreen()),
                      )
                    }
                  else if (index == 1)
                    {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const PersonScreen()),
                      )
                    }
                  else if (index == 2)
                    {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const CourseScreen()),
                      )
                    }
                  else if (index == 3)
                    {
                      Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const NewsScreen()),
                      )
                    }
                }),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // Text(d)
              const titleBorderAll(
                text: 'ห้องปฎิบัติการ B401A',
              ),
              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderWitget(imgList: imgB401),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'ห้องปฎิบัติการ B401B',
              ),

              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderWitget(imgList: imgB401B),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'ห้องปฎิบัติการ B409',
              ),
              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderWitget(imgList: imgB409),
              // Container(
              //   margin: const EdgeInsets.all(10),
              //   width: double.infinity,
              //   height: 2,
              //   decoration: BoxDecoration(
              //       color: HexColor("0080C7"),
              //       borderRadius: BorderRadius.circular(20)),
              // ),
            ],
          ),
        ));
  }
}

class ImgRoomSliderWitget extends StatelessWidget {
  const ImgRoomSliderWitget({
    super.key,
    required this.imgList,
  });

  final List<ImagesRoomData> imgList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: imgList
          .map((item) => Container(
                // height: 800,
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          item.file,
                          fit: BoxFit.cover,
                          width: double.infinity,
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
                              vertical: 10.0,
                              horizontal: 20.0,
                            ),
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ))
          .toList(),
    );
  }
}

class ImagesRoomData {
  String file, name;
  ImagesRoomData({required this.file, required this.name});
}
