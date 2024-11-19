import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/couredetail/courseStucIneScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class CoureDeatailItiScreen extends StatelessWidget {
  const CoureDeatailItiScreen({super.key});

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
                  "แผนการศึกษา",
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
                children: [],
              ),

              ExpansionPanelListExample(),
            ],
          ),
        ));
  }
}

// / stores ExpansionPanel state information
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
    required this.sub,
  });
  List<Subject> sub;
  String expandedValue;
  String headerValue;
  bool isExpanded;
}

class Subject {
  Subject({required this.subname, required this.point});
  String subname;
  String point;
}

class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key});

  @override
  State<ExpansionPanelListExample> createState() =>
      _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample> {
  // final List<Item> _data = generateItems(8);
  // Item data = Item(
  //   headerValue: 'ปี 1 เทอม 1',
  //   expandedValue: '',
  // // );
  // List<Subject> = [
  //         Subject(subname: "subname", point: "point")
  //     ]
  // List<Subject> subjects = [];

  List<Item> dataReal = [
    Item(
      headerValue: 'ปีที่ 1 ภาคการศึกษาที่ 1 ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. ทักษะคอมพิวเตอร์เบื้องต้น',
          point: '3',
        ),
        Subject(
          subname: '2. ดิจิทัลอิเล็กทรอนิกส์',
          point: '3',
        ),
        Subject(
          subname: '3. ปฏิบัติการดิจิทัลอิเล็กทรอนิกส์',
          point: '3',
        ),
        Subject(
          subname: '4. การโปรแกรมโครงสร้าง',
          point: '2',
        ),
        Subject(
          subname: '5. ปฏิบัติการโปรแกรมโครงสร้าง',
          point: '1',
        ),
        Subject(
          subname: '6. ระบบฐานข้อมูล',
          point: '3',
        ),
        Subject(
          subname: '7. การใช้ภาษาอังกฤษ 1',
          point: '1',
        ),
        Subject(
          subname: '8. วิชาเลือกในกลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์',
          point: '1',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 1 ภาคการศึกษาที่ 2 ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การวิเคราะห์และออกแบบระบบ',
          point: '3',
        ),
        Subject(
          subname: '2. การโปรแกรมเชิงวัตถุ',
          point: '2',
        ),
        Subject(
          subname: '3. ปฏิบัติการโปรแกรมเชิงวัตถุ',
          point: '1',
        ),
        Subject(
          subname: '4. โครงสร้างข้อมูลและขั้นตอนวิธี',
          point: '3',
        ),
        Subject(
          subname: '5. สถาปัตยกรรมคอมพิวเตอร์และระบบปฏิบัติการ',
          point: '3',
        ),
        Subject(
          subname: '6. การศึกษาโครงงานเทคโนโลยีสารสนเทศ',
          point: '2',
        ),
        Subject(
          subname: '7. การใช้ภาษาอังกฤษ 2',
          point: '3',
        ),
        Subject(
          subname: '8. วิชาเลือกในกลุ่มวิชาบูรณาการ',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่1 ภาคฤดูร้อน',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การฝึกปฏิบัติงาน',
          point: '2(240 ชั่วโมง)',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 2 ภาคการศึกษาที่ 1 ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. วิชาเลือกในกลุ่มวิชาบูรณาการ',
          point: '3',
        ),
        Subject(
          subname: '2. การพัฒนาเว็บแอปพลิเคชัน',
          point: '3',
        ),
        Subject(
          subname: '3. ปฏิบัติการพัฒนาเว็บแอปพลิเคชัน',
          point: '1',
        ),
        Subject(
          subname: '4. โครงงานพิเศษเทคโนโลยีสารสนเทศ',
          point: '4',
        ),
        Subject(
          subname: '5. วิชาเลือกในกลุ่มวิชาสังคมศาสตร์และมนุษยศาสตร์',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือก',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือกเสรี',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 2 ภาคการศึกษาที่ 2',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. สัมมนาเทคโนโลยีสารสนเทศ',
          point: '1',
        ),
        Subject(
          subname: '2. การโปรแกรมประยุกต์สถาปัตยกรรมแบบโอเพ่นซอร์ส',
          point: '3',
        ),
        Subject(
          subname: '3. หัวข้อเฉพาะเรื่อง IT เพื่ออุตสาหกรรม',
          point: '3',
        ),
        Subject(
          subname: '4. อินเทอร์เน็ตในทุกสิ่งและระบบอัจฉริยะ',
          point: '3',
        ),
        Subject(
          subname: '5. ปฏิบัติการอินเทอร์เน็ตในทุกสิ่งและระบบอัจฉริยะ ',
          point: '1',
        ),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชาภาษา',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือก',
          point: '3',
        ),
        Subject(
          subname: '8. วิชาเลือกเสรี',
          point: '3',
        ),
      ],
    ),
  ];

  // data_m.addAll(data);
  // dataReal.add(new Item)
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          dataReal[index].isExpanded = isExpanded;
        });
      },
      children: dataReal.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                item.headerValue,
                style: const TextStyle(fontSize: 14),
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const titleStrucCoures(
                  name: 'ชื่อวิชา',
                  point: 'หน่วยกิต',
                ),
                Column(
                    children: item.sub.map<itemDetailCours>((Subject sub) {
                  return itemDetailCours(
                    title: sub.subname,
                    point: sub.point,
                  );
                }).toList()),
              ],
            ),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class itemDetailCours extends StatelessWidget {
  final String title;
  final String point;
  const itemDetailCours({
    super.key,
    required this.title,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\t$title",
              overflow: TextOverflow.ellipsis,
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
