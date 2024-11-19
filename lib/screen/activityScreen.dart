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

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];
    List<ActivityItem> activityItem = [
      ActivityItem(
        title: "🏆 FITM CONTEST 2023 🔥",
        detail:
            'งานประกวดวงดนตรี Folk song \nFITM Contest 2023 ณ ห้องพวงแสด ตึกคณะเทคโนโลยีการจัดการอุตสาหกรรม\nวันที่ 28 กุมภาพันธ์ 2567 เวลา 16.00 - 22.00 🎶 พบกับความสนุกจากกิจกรรมดีๆแบบนี้ได้อีกเรื่อยๆ ทุกปีการศึกษา\nหากผิดพลาดประการใด ทางสโมสรนักศึกษาขอกราบขออภัยมา ณ ที่นี้ และสัญญาว่า\nจะปรับปรุงให้ดีขึ้นในปีถัดๆไป\nแล้วเจอกันใหม่ปีหน้าวัยรุ่น!!!!​',
        img: [
          'assets/images/activity/5-01.jpeg',
          'assets/images/activity/5-02.jpeg',
          'assets/images/activity/5-03.jpeg',
          'assets/images/activity/5-04.jpeg',
          'assets/images/activity/5-05.jpeg',
          // 'assets/images/activity/5-06.jpeg',
        ],
      ),
      ActivityItem(
        title: "🏆 การแข่งขันกีฬาของเด็กไอทีทั้ง 3 พระจอม 🔥",
        detail:
            'พบกับ ⁉️\n▪️ การแข่งขันกีฬาสากลสุดเดือดทั้ง 5 ประเภท\n▪️ การแข่งขันกีฬาพื้นบ้านสุดมันส์\n▪️ การแสดงสุดอลังการ ไม่ว่าจะเป็นขบวนพาเหรด รวมไปถึงโชว์พิเศษจากเหล่าเชียร์ลีดเดอร์และคทากรแห่งไอที\n📌 แล้วมาพบกันในวันที่ 3 ก.พ. นี้\n🔔 ติดตามพวกเราได้ที่\n🔸 Facebook : IT3K\n🔸 Instagram : it3k.official',
        img: [
          'assets/images/activity/1-01.jpeg',
          'assets/images/activity/1-02.jpeg',
          'assets/images/activity/1-03.jpeg',
          'assets/images/activity/1-04.jpeg',
          'assets/images/activity/1-05.jpeg',
          'assets/images/activity/1-06.jpeg',
        ],
      ),
      ActivityItem(
        title: "งานปัจฉิมนิเทศ ครั้งที่ 2 ประจำปีการศึกษา 2566",
        detail:
            'วันที่ 12 มีนาคม 2567 คณะเทคโนโลยีและการจัดการอุตสาหกรรม (FITM) มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ วิทยาเขตปราจีนบุรี จัดงานปัจฉิมนิเทศ ครั้งที่ 2 ประจำปีการศึกษา 2566 สำหรับนักศึกษาชั้นปีสุดท้าย ภายในงานได้รับเกียรติจากผู้ช่วยศาสตราจารย์ ดร.กฤษฎากร บุดดาจันทร์ คณบดีคณะเทคโนโลยีและการจัดการอุตสาหกรรม (FITM) มากล่าวเปิดงาน พร้อมกล่าวให้คำอวยพรแก่นักศึกษา พร้อมด้วยคณาจารย์จากภาควิชาต่าง ๆ และมีวิทยากรมาบรรยายให้ความรู้ ณ ห้องพวงแสด ชั้น 1 อาคารคณะเทคโนโลยีและการจัดการอุตสาหกรรม มจพ. วิทยาเขตปราจีนบุรี',
        img: [
          'assets/images/activity/3-01.jpeg',
          'assets/images/activity/3-02.jpeg',
          'assets/images/activity/3-03.jpeg',
        ],
      ),
      ActivityItem(
        title:
            'โครงการยกระดับทักษะทางวิชาการ ในกิจกรรมอบรมทักษะการใช้อุปกรณ์เทคโนโลยี หัวข้อ "มหัศจรรย์ Robot 2023" ณ โรงเรียนปราจีนกัลยาณี',
        detail:
            'เมื่อวันที่ 25 - 26 มกราคม 2567 ภาควิชาเทคโนโลยีสารสนเทศ คณะเทคโนโลยีและการจัดการอุตสาหกรรม(FITM) มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ วิทยาเขตปราจีนบุรี ได้รับเชิญให้เป็นวิทยากร ในโครงการบริการวิชาการถ่ายทอดความรู้ โครงการยกระดับทักษะทางวิชาการ ในกิจกรรมอบรมทักษะการใช้อุปกรณ์เทคโนโลยี เรื่อง "มหัศจรรย์ Robot 2023" ให้กับนักเรียนระดับชั้นมัธยมศึกษาตอนปลาย ณ ห้องปฏิบัติการคอมพิวเตอร์ โรงเรียนปราจีนกัลยาณี อ.เมือง จ.ปราจีนบุรี \n.\nโดยวิทยากรผู้เชี่ยวชาญของคณะฯ ได้แก่ ผู้ช่วยศาสตราจารย์สมชัย เชียงพงศ์พันธุ์  ผู้ช่วยศาสตราจารย์นิติการ นาคเจือทอง และคุณวิวัช รุ่งสว่าง \n.\nซึ่งได้มีบรรยายให้ความรู้แก่ผู้เข้าอบรมในการเขียนโปรแกรมคอมพิวเตอร์เพื่อควบคุมการทำงานของหุ่นยนต์ด้วยไมโครคอนโทรลเลอร์ เพื่อสามารถแก้ปัญหาตามเงื่อนไขที่กำหนดได้\nและทำให้หุ่นยนต์สามารถเดินตามเส้นทางที่กำหนดได้ โดยนักเรียนที่ได้เข้าร่วมโครงการในครั้งนี้ได้รับการปลูกฝังการฝึกทักษะกระบวนการเรียนรู้ ส่งเสริมทักษะดิจิทัล\nผ่านการเขียนโปรแกรมควบคุมการทำงานของหุ่นยนต์  ',
        img: [
          'assets/images/activity/4-01.jpeg',
          'assets/images/activity/4-02.jpeg',
          'assets/images/activity/4-03.jpeg',
          'assets/images/activity/4-04.jpeg',
          'assets/images/activity/4-05.jpeg',
        ],
      ),
      ActivityItem(
        title: "งาน IT 25 ปี KMUTNB",
        detail: '✅ ในวันที่ 8 พฤษจิกายน 2566',
        img: [
          'assets/images/activity/2-01.jpeg',
          'assets/images/activity/2-02.jpeg',
        ],
      ),
      ActivityItem(
        title: "กิจกรรมรับน้อง 66 💕",
        detail:
            '🏳️‍🌈วันสุดท้ายของการทำกิจกรรม🫂#รับน้อง66 \nของคณะเทคโนโลยีและการจัดการอุตสาหกรรม\nด้วยพิธีรับขวัญ💕จากคณะอาจารย์และพี่ๆสาขาต่างๆภายในคณะเทคโนโลยีและการจัดการอุตสาหกรรม🎊อวยพรน้องน้องให้ประสบความสำเร็จกับการศึกษาในรั้วมหาวิทยาลัย🎉\n😁ขอต้อนรับน้องๆนักศึกษาใหม่ทุกคน เข้าสู่รั้วประดู่แดงและครอบครัว #ลูกพระจอม\nของคณะเทคโนโลยีและการจัดการอุตสาหกรรม มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ วิทยาเขตปราจีนบุรี \nจนถึงวันที่เรารับชุดครุยแดงพร้อมกันทุกคนครับ👨🏻‍🎓👩🏻‍🎓🧑🏼‍🎓',
        img: [
          'assets/images/activity/6-01.jpeg',
          'assets/images/activity/6-02.jpeg',
          'assets/images/activity/6-03.jpeg',
          'assets/images/activity/6-04.jpeg',
          'assets/images/activity/6-05.jpeg',
        ],
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "กิจกรรม",
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
        body: ListView(
          children: [
            Column(
              children: activityItem.map<Widget>((ActivityItem item) {
                return WidgetActicityItem(
                  title: item.title,
                  detail: item.detail,
                  img: item.img,
                );
              }).toList(),
            ),
          ],
        ));
  }
}
