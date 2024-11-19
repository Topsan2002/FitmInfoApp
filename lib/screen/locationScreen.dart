import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];
    List<ImagesLocationData> imgFitm = <ImagesLocationData>[];
    List<int> idFitm = [1, 3, 20, 30, 46, 52, 55, 56];
    for (var element in idFitm) {
      imgFitm.add(ImagesLocationData(
          file:
              "https://fitm-511b1.firebaseapp.com/FITM_Architecture/img/$element.jpg",
          name: ""));
    }

    List<ImagesLocationData> imgLibary = <ImagesLocationData>[];
    List<int> idLibary = [2, 14, 16, 32, 33, 63];
    for (var element in idLibary) {
      imgLibary.add(ImagesLocationData(
          file:
              "https://fitm-511b1.firebaseapp.com/FITM_Architecture/img/$element.jpg",
          name: ""));
    }

    List<ImagesLocationData> imgLPSign = <ImagesLocationData>[];
    List<int> idLPSign = [5, 8, 9, 10, 19, 23, 26, 27, 35, 54];
    for (var element in idLPSign) {
      imgLPSign.add(ImagesLocationData(
          file:
              "https://fitm-511b1.firebaseapp.com/FITM_Architecture/img/$element.jpg",
          name: ""));
    }

    List<ImagesLocationData> imgHopank = <ImagesLocationData>[];
    List<int> idHopank = [12, 13, 15, 17, 25];
    for (var element in idHopank) {
      imgHopank.add(ImagesLocationData(
          file:
              "https://fitm-511b1.firebaseapp.com/FITM_Architecture/img/$element.jpg",
          name: ""));
    }
    List<ImagesLocationData> imgFront = <ImagesLocationData>[];
    List<int> idFront = [28, 29, 34];
    for (var element in idFront) {
      imgFront.add(ImagesLocationData(
          file:
              "https://fitm-511b1.firebaseapp.com/FITM_Architecture/img/$element.jpg",
          name: ""));
    }

    List<ImagesLocationData> imgFeel = <ImagesLocationData>[];
    List<int> idFeel = [36, 37, 38, 48];
    for (var element in idFeel) {
      imgFeel.add(ImagesLocationData(
          file:
              "https://fitm-511b1.firebaseapp.com/FITM_Architecture/img/$element.jpg",
          name: ""));
    }
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
                text: 'ตึกคณะเทคโนโลยีและการจัดการอุตสาหกรรม',
              ),
              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderNetworkWitget(imgList: imgFitm),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'สำนักหอสมุดกลาง',
              ),
              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderNetworkWitget(imgList: imgLibary),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'หลวงพ่อสิงห์',
              ),
              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderNetworkWitget(imgList: imgLPSign),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'หอพัก',
              ),

              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderNetworkWitget(imgList: imgHopank),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'หน้ามหาวิทยาลัย',
              ),

              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderNetworkWitget(imgList: imgFront),
              const SizedBox(
                height: 10,
              ),
              const titleBorderAll(
                text: 'บรรยากาศภายในมอ',
              ),

              const SizedBox(
                height: 10,
              ),
              ImgRoomSliderNetworkWitget(imgList: imgFeel),
              const SizedBox(
                height: 10,
              ),

              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                    color: HexColor("0080C7"),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ));
  }
}

class titleBorderAll extends StatelessWidget {
  final String text;
  const titleBorderAll({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // margin: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 3, color: HexColor("0080C7"))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ImagesLocationData {
  String file, name;
  ImagesLocationData({required this.file, required this.name});
}

class ImgRoomSliderNetworkWitget extends StatelessWidget {
  const ImgRoomSliderNetworkWitget({
    super.key,
    required this.imgList,
  });

  final List<ImagesLocationData> imgList;

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
                        Image.network(
                          item.file,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return loddingImgae(
                              loadingProgress: loadingProgress,
                            );
                          },
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
                            // child: Text(
                            //   item.name,
                            //   style: const TextStyle(
                            //     fontSize: 20,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    )),
              ))
          .toList(),
    );
  }
}
