import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/couredetail/coureDeatilIneScreen.dart';
import 'package:flutter_application_1/screen/couredetail/courseStucIneScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/pdfview.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoureIneScreen extends StatelessWidget {
  const CoureIneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (Route route) => false);
          },
        ),
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
                  CupertinoPageRoute(builder: (context) => const NewsScreen()),
                )
              }
          },
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // Text(d)
              const Center(
                child: Text(
                  "ภาพรวมหลักสูตร",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Image.asset(
                height: 250,
                "assets/images/ineinfo.jpeg",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "หลักสูตร วศ.บ. วิศวกรรมสารสนเทศและเครือข่าย(INE) เป็นอีกหนึ่งหลักสูตร ของภาควิชาเทคโนโลยีสารสนเทศ ซึ่งเป็นหลักสูตรเสริมทักษะภาษาอังกฤษ โดยหลักสูตรเล็งเห็นถึงความสำคัญของภาษาอังกฤษเพื่อเพิ่มทักษะทางภาษาให้กับนักศึกษาในหลักสูตรนี้ โดยมีวิชาภาษาอังกฤษในหลักสูตร 12 หน่วยกิตและยังมีบางรายวิชาทางด้าน IT ที่ดำเนินการเรียนการสอนเป็นภาษาอังกฤษด้วยนะครับ",
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "ยังไม่พอ ในหลักสูตรนี้ ยังเพิ่มวิชาที่กำลังอินเทรนด์ในโลกของคอมพิวเตอร์ อาทิ เช่น Cloud Architect, SDN,Automation, ML"),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      btnDd(
                        iconuser: const Icon(
                          Icons.settings_rounded,
                          size: 50,
                        ),
                        text: "โครงสร้างหลักสูตร",
                        onPressed: () {
                          // Navigator.pop(context);
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) =>
                                  const CourseStrucIneScreen(),
                            ),
                          );
                        },
                      ),
                      btnDd(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    const CourseDeatilIneScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.library_books_rounded,
                          size: 50,
                        ),
                        text: "แผนการศึกษา",
                      ),
                      btnDd(
                        onPressed: () async {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.setString(
                              'filepath', 'assets/file/news/ine.pdf');
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const ViewPdfScreen()),
                          );
                        },
                        iconuser: const Icon(
                          Icons.library_books_rounded,
                          size: 50,
                        ),
                        text: "ไฟล์ PDF",
                      ),
                      // TextButton(onPressed: onPressed, child: child)
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
