import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/couredetail/courseStucItScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseDeatilItScreen extends StatelessWidget {
  const CourseDeatilItScreen({super.key});

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

// List<Item> generateItems(int numberOfItems) {
//   return List<Item>.generate(numberOfItems, (int index) {
//     return Item(
//       headerValue: 'Panel $index',
//       expandedValue: 'This is item number $index',
//     );
//   });
// }

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
      headerValue: 'ปีที่ 1 ภาคการศึกษาที่ 1 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. เทคโนโลยีสารสนเทศเบื้องต้น',
          point: '3',
        ),
        Subject(
          subname: '2. การโปรแกรมคอมพิวเตอร์',
          point: '3',
        ),
        Subject(
          subname: '3. การแก้ปัญหาทางด้านเทคโนโลยีสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '4. ภาษาอังกฤษ 1',
          point: '3',
        ),
        Subject(
            subname: '5. วิชาเลือกในกลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์',
            point: '3'),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชาสังคมศาสตร์และมนุษยศาสตร์',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือกในกลุ่มวิชากีฬาและนันทนาการ',
          point: '1',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 1 ภาคการศึกษาที่ 2 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. คณิตศาสตร์เต็มหน่วยและการประยุกต์',
          point: '3',
        ),
        Subject(
          subname: '2. การเขียนโปรแกรมเชิงวัตถุ',
          point: '3',
        ),
        Subject(
          subname: '3. ความรู้พื้นฐานในการออกแบบกราฟิกส์',
          point: '3',
        ),
        Subject(
          subname: '4. ภาษาอังกฤษ 2',
          point: '3',
        ),
        Subject(
            subname: '5. วิชาเลือกในกลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์',
            point: '3'),
        Subject(
          subname: '6. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 1',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 2 ภาคการศึกษาที่ 1 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. โครงสร้างข้อมูลและขั้นตอนวิธี',
          point: '3',
        ),
        Subject(
          subname: '2. สถาปัตยกรรมคอมพิวเตอร์',
          point: '3',
        ),
        Subject(
          subname: '3. ระบบฐานข้อมูล',
          point: '3',
        ),
        Subject(
          subname: '4. เครือข่ายคอมพิวเตอร์และการสื่อสาร 2',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 2 ภาคการศึกษาที่ 2 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การโปรแกรมภาษาจาวาสคริปต์',
          point: '3',
        ),
        Subject(
          subname: '2. วิศวกรรมซอฟต์แวร์',
          point: '3',
        ),
        Subject(
          subname: '3. การวิเคราะห์และออกแบบระบบ',
          point: '3',
        ),
        Subject(
          subname: '4. การโปรแกรมเว็บ',
          point: '3',
        ),
        Subject(
          subname: '5. กระบวนการคิดเชิงออกแบบ ',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชาภาษา 1',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 3 ภาคการศึกษาที่ 1 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. ระบบปฏิบัติการคอมพิวเตอร์',
          point: '3',
        ),
        Subject(
          subname: '2. การออกแบบจากประสบการณ์ผู้ใช้',
          point: '3',
        ),
        Subject(
          subname: '3. อินเทอร์เน็ตในทุกสรรพสิ่ง',
          point: '3',
        ),
        Subject(
          subname: '4. วิชาเลือก 1',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือก 2 ',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 3 ภาคการศึกษาที่ 2 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. ระบบปฏิบัติการยูนิกซ์',
          point: '3',
        ),
        Subject(
          subname: '2. การพัฒนาโปรแกรมประยุกต์บนอุปกรณ์เคลื่อนที่',
          point: '3',
        ),
        Subject(
          subname: '3. การบริหารโครงการเทคโนโลยีสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '4. วิชาเลือก 3',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือก 3',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชาภาษา 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 3 ภาคการศึกษาที่ 3 โครงการปกติ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การฝึกงาน',
          point: '2(240 ชั่วโมง)',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 4 ภาคการศึกษาที่ 1 โครงการปกติ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. ความปลอดภัยระบบสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '2. สัมมนาเทคโนโลยีสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '3. โครงงานเทคโนโลยีสารสนเทศ 1',
          point: '3',
        ),
        Subject(
          subname: '4. วิชาเลือก 5',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 3',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 4 ภาคการศึกษาที่ 2 โครงการปกติ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. โครงงานเทคโนโลยีสารสนเทศ 2',
          point: '3',
        ),
        Subject(
          subname: '2. วิชาเลือกเสรี 1',
          point: '3',
        ),
        Subject(
          subname: '3. วิชาเลือกเสรี 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 4 ภาคการศึกษาที่ 1 โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. ความปลอดภัยระบบสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '2. สัมมนาเทคโนโลยีสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '3. เตรียมสหกิจศึกษา',
          point: '3',
        ),
        Subject(
          subname: '4. วิชาเลือกเสรี 1',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกเสรี 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 4 ภาคการศึกษาที่ 2 โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. สหกิจศึกษา',
          point: '6(540 ชั่วโมง)',
        ),
        Subject(
          subname: '2. สัมมนาเทคโนโลยีสารสนเทศ',
          point: '3',
        ),
        Subject(
          subname: '3. เตรียมสหกิจศึกษา',
          point: '3',
        ),
        Subject(
          subname: '4. วิชาเลือกเสรี 1',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกเสรี 2',
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
                style: TextStyle(fontSize: 14),
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
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\t$title",
              overflow: TextOverflow.fade,
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
