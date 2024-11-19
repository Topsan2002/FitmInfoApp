import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/couredetail/courseStucItScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseDeatilIneScreen extends StatelessWidget {
  const CourseDeatilIneScreen({super.key});

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
          subname: '1. คณิตศาสตร์วิศวกรรม 1',
          point: '3',
        ),
        Subject(
          subname: '2. วิศวกรรมสารสนเทศและเครือข่ายเบื้องต้น',
          point: '3',
        ),
        Subject(
          subname: '3. การเขียนโปรแกรมคอมพิวเตอร์',
          point: '3',
        ),
        Subject(
          subname: '4. ปฏิบัติการการเขียนโปรแกรมคอมพิวเตอร์',
          point: '1',
        ),
        Subject(
          subname: '5. วิชาเลือกในกลุ่มวิชาภาษา 1',
          point: '3,',
        ),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชากีฬาและนันทนาการ',
          point: '1',
        ),
        Subject(
          subname: '7. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 1',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 1 ภาคการศึกษาที่ 2 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. คณิตศาสตร์วิศวกรรม 2',
          point: '3',
        ),
        Subject(
          subname: '2. วิชาเลือกในกลุ่มวิชาวิทยาศาสตร์และคณิตศาสตร์',
          point: '3',
        ),
        Subject(
          subname: '3. อิเล็กทรอนิกส์และดิจิทัล',
          point: '3',
        ),
        Subject(
          subname: '4. ปฏิบัติการอิเล็กทรอนิกส์และดิจิทัล ',
          point: '1',
        ),
        Subject(
          subname: '5. การสื่อสารข้อมูลและเครือข่ายคอมพิวเตอร์',
          point: '3',
        ),
        Subject(
          subname: '6. การแก้ปัญหาและขั้นตอนวิธี',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือกในกลุ่มวิชาภาษา 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 2 ภาคการศึกษาที่ 1 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. คณิตศาสตร์เต็มหน่วยและการประยุกต์',
          point: '3',
        ),
        Subject(
          subname: '2. วิศวกรรมข้อมูล',
          point: '3',
        ),
        Subject(
          subname: '3. การเขียนโปรแกรมคอมพิวเตอร์ขั้นสูง',
          point: '3',
        ),
        Subject(
          subname: '4. ปฏิบัติการวิศวกรรมเครือข่าย 1',
          point: '1',
        ),
        Subject(
          subname: '5. เครือข่ายขั้นสูงและโปรโตคอล',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชาภาษา 3',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือกเสรี1',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 2 ภาคการศึกษาที่ 2 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การเขียนแบบวิศวกรรรมสารสนเทศและเครือข่าย',
          point: '3',
        ),
        Subject(
          subname: '2. ระบบฐานข้อมูล',
          point: '3',
        ),
        Subject(
          subname: '3. สถาปัตยกรรมคอมพิวเตอร์และระบบปฏิบัติการ',
          point: '3',
        ),
        Subject(
          subname: '4. ปฏิบัติการวิศวกรรมเครือข่าย 2',
          point: '1',
        ),
        Subject(
          subname: '5. กระบวนการคิดเชิงออกแบบ ',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกในกลุ่มวิชาภาษา 4',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือกในกลุ่มวิชาสังคมศาสตร์และมนุษยศาสตร์',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 3 ภาคการศึกษาที่ 1 โครงการปกติ/โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. วิศวกรรมซอฟต์แวร์',
          point: '3',
        ),
        Subject(
          subname: '2. สถิติสำหรับวิศวกรและนักวิทยาศาสตร์',
          point: '3',
        ),
        Subject(
          subname: '3. การออกแบบและการจัดทำเครือข่ายคอมพิวเตอร์',
          point: '3',
        ),
        Subject(
          subname: '4. การออกแบบและการประยุกต์อินเทอร์เน็ตในทุกสรรพสิ่ง',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกกลุ่มวิชาชีพ 1 ',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 2 ',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 3 ภาคการศึกษาที่ 2 โครงการปกติ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การจัดการเครือข่ายเบื้องต้นและเครื่องมือ',
          point: '3',
        ),
        Subject(
          subname: '2. การประยุกต์ใช้การเรียนรู้ของเครื่องจักร',
          point: '3',
        ),
        Subject(
          subname: '3. ความมั่นคงปลอดภัยไซเบอร์',
          point: '3',
        ),
        Subject(
          subname: '4. การพัฒนาโปรแกรมประยุกต์บนอุปกรณ์เคลื่อนที่',
          point: '3',
        ),
        Subject(
          subname: '5. หลักการโทรคมนาคม',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกกลุ่มวิชาชีพ 2',
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
          subname: '1. สถาปัตยกรรมคลาวด์และการใช้งาน',
          point: '3',
        ),
        Subject(
          subname: '2. การวิเคราะห์ข้อมูลขนาดใหญ่',
          point: '3',
        ),
        Subject(
          subname: '3. สัมมนาวิศวกรรมสารสนเทศและเครือข่าย',
          point: '3',
        ),
        Subject(
          subname: '4. โครงงานวิศวกรรมสารสนเทศและเครือข่าย 1',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกกลุ่มวิชาชีพ 3',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 3',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 4 ภาคการศึกษาที่ 2 โครงการปกติ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. โครงงานวิศวกรรมสารสนเทศและเครือข่าย 2',
          point: '3',
        ),
        Subject(
          subname: '2. วิชาเลือกเสรี 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 3 ภาคการศึกษาที่ 2 โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. การจัดการเครือข่ายเบื้องต้นและเครื่องมือ',
          point: '3',
        ),
        Subject(
          subname: '2. ความมั่นคงปลอดภัยไซเบอร์',
          point: '3',
        ),
        Subject(
          subname: '3. การพัฒนาโปรแกรมประยุกต์บนอุปกรณ์เคลื่อนที่',
          point: '3',
        ),
        Subject(
          subname: '4. หลักการโทรคมนาคม',
          point: '3',
        ),
        Subject(
          subname: '5. การประยุกต์ใช้การเรียนรู้ของเครื่องจักร',
          point: '3',
        ),
        Subject(
          subname: '6. เตรียมสหกิจศึกษา',
          point: '3',
        ),
        Subject(
          subname: '7. วิชาเลือกกลุ่มวิชาชีพ 2',
          point: '3',
        ),
      ],
    ),
    Item(
      headerValue: 'ปีที่ 4 ภาคการศึกษาที่ 1 โครงการสหกิจ',
      expandedValue: '',
      sub: [
        Subject(
          subname: '1. สถาปัตยกรรมคลาวด์และการใช้งาน',
          point: '3',
        ),
        Subject(
          subname: '2. การวิเคราะห์ข้อมูลขนาดใหญ่',
          point: '3',
        ),
        Subject(
          subname: '3. สัมมนาวิศวกรรมสารสนเทศและเครือข่าย',
          point: '3',
        ),
        Subject(
          subname: '4. วิชาเลือกกลุ่มวิชาชีพ 3',
          point: '3',
        ),
        Subject(
          subname: '5. วิชาเลือกในหมวดวิชาศึกษาทั่วไป 3',
          point: '3',
        ),
        Subject(
          subname: '6. วิชาเลือกเสรี 2',
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
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\t$title",
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
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
