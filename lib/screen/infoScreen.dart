import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/couredetail/coureIneScreen.dart';
import 'package:flutter_application_1/screen/couredetail/coureItScreen.dart';
import 'package:flutter_application_1/screen/couredetail/coureItiScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
            "หลักสูตร",
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
                      Navigator.push(
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
              const Center(
                child: Text(
                  "หลักสูตร",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              coureItem(
                cName: 'หลักสูตรวิทยาศาสตร์บัณฑิต (วท.บ.)',
                cDep: 'สาขาวิชาเทคโนโลยีสารสนเทศ',
                cYear: 'หลักสูตรปี 2562',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const CoureItScreen()),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              coureItem(
                  cName: 'หลักสูตรวิทยาศาสตร์บัณฑิต (วท.บ.)',
                  cDep: 'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย',
                  cYear: 'หลักสูตรปี 2562',
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const CoureIneScreen()),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              coureItem(
                cName: 'หลักสูตรอุตสาหกรรมศาสตรบัณฑิต (อส.บ.)',
                cDep: 'สาขาวิชาเทคโนโลยีสารสนเทศ',
                cYear: 'หลักสูตรปี 2566',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const CourseITitScreen(),
                    ),
                  );
                },
              ),
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
