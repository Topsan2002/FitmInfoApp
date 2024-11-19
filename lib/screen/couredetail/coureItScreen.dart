import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/couredetail/coureDetailItScreen.dart';
import 'package:flutter_application_1/screen/couredetail/courseStucItScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/pdfview.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoureItScreen extends StatelessWidget {
  const CoureItScreen({super.key});

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
            "สาขาวิชาเทคโนโลยีสารสนเทศ",
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
                // height: 250,
                "assets/images/itinfo.jpeg",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "ภาควิชาเทคโนโลยีสารสนเทศได้ดำเนินการจัดการเรียนการสอนจนถึงปัจจุบัน นับเป็นปีที่ 25 ซึ่งต้องขอขอบคุณอาจารย์ ดร.สมพัตร์ เบ็ญจชัยพร (ปัจจุบันอาจารย์ท่านเกษียณอายุราชการแล้ว) เป็นอย่างสูง ที่ท่านได้ริเริ่มสร้างหลักสูตรของภาควิชา และให้คำแนะนำ แนวคิดต่าง ๆ ในการดำเนินงานที่ผ่านมาของภาควิชามาโดยตลอด"),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "ภาควิชายึดถือแนวทางตามอัตลักษณ์ของมหาวิทยาลัยคือ “บัณฑิตที่คิดเป็น ทำเป็น” และปรัชญาของคณะคือ “สร้างปัญญา เพื่อการพัฒนาที่ยั่งยืน” เพื่อเป็นแนวทางในการจัดการเรียนการสอน โดยมุ่งเน้นการเรียนการสอนในด้านเทคโนโลยีสารสนเทศ เพื่อผลิตบัณฑิตทางด้านเทคโนโลยีสารสนเทศที่มีความรู้ ความสามารถและประยุกต์ใช้เทคโนโลยีได้ตรงกับความต้องการของภาคธุรกิจและอุตสาหกรรมสมัยใหม่ ที่สอดคล้องกับอุตสาหกรรม 4.0 และเป็นบัณฑิตที่มีวินัย ความรับผิดชอบและจริยธรรมในวิชาชีพ"),
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
                              builder: (context) => const CourseStrucItScreen(),
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
                                    const CourseDeatilItScreen()),
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
                              'filepath', 'assets/file/news/it.pdf');
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
