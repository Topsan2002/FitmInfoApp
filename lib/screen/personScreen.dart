import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

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
            "บุคลากร",
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
                      // Navigator.pushReplacement(
                      //   context,
                      //   CupertinoPageRoute(
                      //       builder: (context) => const PersonScreen()),
                      // )
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
              const Center(
                child: Text(
                  "ข้อมูลบุคคลากร",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                    color: HexColor("0080C7"),
                    borderRadius: BorderRadius.circular(20)),
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: personItem(
                          path: "assets/images/person/1.jpeg",
                          name: "ผศ.ดร.ขนิษฐา นามี",
                          dep: "หัวหน้าภาควิชาฯ",
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/2.jpeg",
                        name: "ผศ.พีระศักดิ์ เสรีกุล",
                        dep: "แขนงวิชาวิทยาการสารสนเทศ",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/3.jpeg",
                        name: "ดร.ประดิษฐ์ พิทักษ์เสถียรกุล",
                        dep: "แขนงวิชาวิทยาการสารสนเทศ",
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/4.jpeg",
                        name: "รศ.ดร.อนิราช มิ่งขวัญ",
                        dep: "แขนงวิชาเทคโนโลยีเครือข่าย",
                      ),
                      personItem(
                        path: "assets/images/person/5.jpeg",
                        name: "ผศ.ดร.วันทนี ประจวบศุภกิจ",
                        dep: "แขนงวิชาวิทยาการสารสนเทศ",
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/6.jpeg",
                        name: "รศ.ดร.ยุพิน สรรพคุณ",
                        dep: "แขนงวิชาเทคโนโลยีอุตสาหกรรม",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/7.jpeg",
                        name: "ผศ.นิมิต ศรีคำทา",
                        dep: "แขนงวิชาเทคโนโลยีอุตสาหกรรม",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/8.jpeg",
                        name: "ผศ.สมชัย เชียงพงศ์พันธุ์",
                        dep: "แขนงวิชาเทคโนโลยีมัลติมีเดีย",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/9.jpeg",
                        name: "ผศ.สุปีติ กุลจันทร์",
                        dep: "แขนงวิชาวิทยาการสารสนเทศ",
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/10.jpeg",
                        name: "ผศ.ดร.พาฝัน ดวงไพศาล",
                        dep: "แขนงวิชาเทคโนโลยีระบบธุรกิจ",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/11.jpeg",
                        name: "ดร.วัชรชัย คงศิริวัฒนา",
                        dep: "แขนงวิชาเทคโนโลยีเครือข่าย",
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/12.jpeg",
                        name: "ผศ.สิวาลัย จินเจือ",
                        dep: "แขนงวิชาเทคโนโลยีระบบธุรกิจ",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/13.jpeg",
                        name: "ผศ.อรบุษป์ วุฒิกมลชัย",
                        dep: "แขนงวิชาเทคโนโลยีมัลติมีเดีย",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/10.jpeg",
                        name: "ผศ.ดร.พาฝัน ดวงไพศาล",
                        dep: "แขนงวิชาเทคโนโลยีระบบธุรกิจ",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/14.jpeg",
                        name: "ผศ.ดร.สุพาภรณ์ ซิ้มเจริญ",
                        dep: "แขนงวิชาเทคโนโลยีเครือข่าย",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/15.jpeg",
                        name: "ผศ.นพดล บูรณ์กุศล",
                        dep: "แขนงวิชาเทคโนโลยีมัลติมีเดีย",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/16.jpeg",
                        name: "ผศ.นิติการ นาคเจือทอง",
                        dep: "แขนงวิชาเทคโนโลยีมัลติมีเดีย",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/17.jpeg",
                        name: "ผศ.นพเก้า ทองใบ",
                        dep: "แขนงวิชาเทคโนโลยีอุตสาหกรรม",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/18.jpeg",
                        name: "ผศ.ดร.บีสุดา ดาวเรือง",
                        dep: "แขนงวิชาเทคโนโลยีมัลติมีเดีย",
                      ), // SizedBox(width: 20),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     personItem(
                  //       path: "assets/images/person/19.jpeg",
                  //       name: "ดร.ศรายุทธ ธเนศสกุลวัฒนา",
                  //       dep: "แขนงวิชาเทคโนโลยีเครือข่าย",
                  //     ),
                  //     SizedBox(width: 20),

                  //     personItem(
                  //       path: "assets/images/person/20.jpeg",
                  //       name: "ผศ.ดร.นัฎฐพันธ์ นาคพงษ์",
                  //       dep: "แขนงวิชาเทคโนโลยีอุตสาหกรรม",
                  //     ),
                  //     // SizedBox(width: 20),
                  //   ],
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/19.jpeg",
                        name: "ดร.ศรายุทธ ธเนศสกุลวัฒนา",
                        dep: "แขนงวิชาเทคโนโลยีเครือข่าย",
                      ),
                      SizedBox(width: 20),

                      personItem(
                        path: "assets/images/person/20.jpeg",
                        name: "ผศ.ดร.นัฎฐพันธ์ นาคพงษ์",
                        dep: "แขนงวิชาเทคโนโลยีอุตสาหกรรม",
                      ),
                      // SizedBox(width: 20),
                    ],
                  ),
                  // SizedBox(height: 10),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/21.jpeg",
                        name: "อ.ดร.ศิรินทรา แว่วศรี",
                        dep: "",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/22.jpeg",
                        name: "อ.ดร.กาญจน์ ณ ศรีธะ",
                        dep: "",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/23.jpeg",
                        name: "คุณไกรมิตร พงษ์นิยะกูล",
                        dep: "ช่างเทคนิค",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/24.jpeg",
                        name: "คุณกฤษณ์ เผือกงาม",
                        dep: "นักวิชาการคอมพิวเตอร์",
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/25.jpeg",
                        name: "คุณลัดดา ตั้งเกียรติศิริ",
                        dep: "เจ้าหน้าที่บริหารงานทั่วไป",
                      ),
                      SizedBox(width: 20),
                      personItem(
                        path: "assets/images/person/26.jpeg",
                        name: "คุณอุไรวรรณ วัตรยิ่งล",
                        dep: "เจ้าหน้าที่บริหารงานทั่วไป",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      personItem(
                        path: "assets/images/person/27.jpeg",
                        name: "คุณวิวัช รุ่งสว่าง",
                        dep: "วิศวกร",
                      ),
                    ],
                  ),
                ],
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

class personItem extends StatelessWidget {
  final String path;
  final String name;
  final String dep;
  const personItem({
    super.key,
    required this.path,
    required this.name,
    required this.dep,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          path,
          // width: 80,
        ),
        Container(
          height: 3,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 14),
        ),
        Container(
          height: 3,
        ),
        Text(
          dep,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
