import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseStrucIneScreen extends StatelessWidget {
  const CourseStrucIneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];

    // List<Subject> sub = [Subject(subname: "subname", point: point)];
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
            children: const [
              // Text(d)
              Center(
                child: Text(
                  "โครงสร้างหลักสูตร",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  titleStrucCoures(
                    name: '1. หมวดวิชาศึกษาทั่วไป',
                    point: '31 หน่วยกิต',
                  ),
                  itemSturCours(
                    title: "\t1.1 กลุ่มวิชาภาษา",
                    point: "12 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t1.2กลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์",
                    point: "3 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t1.3 กลุ่มวิชาสังคมศาสตร์และมนุษยศาสตร์",
                    point: "3 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t1.4 กลุ่มวิชากีฬาและนันทนาการ",
                    point: "1 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t1.5 กลุ่มวิชาบูรณาการ",
                    point: "3 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t1.6 กลุ่มวิชาเลือกในหมวดศึกษาทั่วไป",
                    point: "9 หน่วยกิต",
                  ),
                  titleStrucCoures(
                    name: '2. หมวดวิชาเฉพาะ',
                    point: '98 หน่วยกิต',
                  ),
                  itemSturCours(
                    title: "\t2.1 กลุ่มวิชาแกน",
                    point: "47 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t2.2 กลุ่มวิชาชีพ",
                    point: "43 หน่วยกิต",
                  ),
                  itemSturCours(
                    title: "\t2.3 กลุ่มวิชาฝึกงาน/สหกิจศึกษา",
                    point: "8 หน่วยกิต",
                  ),
                  titleStrucCoures(
                    name: '3. หมวดวิชาเลือกเสรี',
                    point: '6 หน่วยกิต',
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class titleStrucCoures extends StatelessWidget {
  final String name, point;
  const titleStrucCoures({
    super.key,
    required this.name,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(point,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}

class itemSturCours extends StatelessWidget {
  final String title;
  final String point;
  const itemSturCours({
    super.key,
    required this.title,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\t$title",
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            Text(point,
                style: const TextStyle(
                  fontSize: 14,
                )),
          ],
        ),
      ),
    );
  }
}
