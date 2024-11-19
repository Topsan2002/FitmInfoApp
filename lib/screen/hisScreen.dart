import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/couredetail/coureDeatilIneScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:timeline_tile/timeline_tile.dart';

class FitmItInfo extends StatelessWidget {
  const FitmItInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];

    List<Subject> dataItem = [
      Subject(
        subname: 'ปรัชญา',
        point: 'พัฒนาคน เพื่อพัฒนาเทคโนโลยีสารสนเทศ',
      ),
      Subject(
        subname: 'ปณิธาณ',
        point:
            'ผลิตบัณฑิตที่มีความรู้คู่คุณธรรม ส่งเสริมการบริการวิชาการและมุ่งมั่นการวิจัยให้เกิดประโยชน์สูงสุดต่อสังคม',
      ),
      Subject(
        subname: 'วิสัยทัศน์',
        point: 'เป็นผู้นำทางด้านเทคโนโลยีสารสนเทศในระดับภูมิภาค',
      ),
      Subject(
        subname: 'พันธกิจ',
        point:
            '1. ผลิตบัณฑิตที่มีความรู้ความสามารถทางด้านเทคโนโลยีสารสนเทศ\n2. พัฒนาการเรียนการสอนทางด้านเทคโนโลยีสารสนเทศที่มีประสิทธิภาพ\n3. พัฒนาบัณฑิตให้มีคุณธรรมและจริยธรรม\n4. วิจัยและพัฒนาเทคโนโลยีสารสนเทศให้เกิดประโยชน์แก่สังคม\n5. บริการวิชาการด้านเทคโนโลยีสารสนเทศแก่สังคม',
      ),
      Subject(
          subname: 'วัตถุประสงค์',
          point:
              '1. ผลิตบัณฑิตทางด้านเทคโนโลยีสารสนเทศ ที่มีความรู้ความสามารถและประยุกต์ใช้ได้ตรงกับความต้องการของธุรกิจและอุตสาหกรรม\n2. เพื่อพัฒนาการเรียนการสอนทางด้านเทคโนโลยีที่มีประสิทธิภาพ\n3. เพื่อพัฒนาบัณฑิตให้มี คุณธรรมและจริยธรรม\n4. เพื่อวิจัย พัฒนาและประยุกต์เทคโนโลยีสารสนเทศให้เกิดประโยชน์แก่สังคม\n5. เพื่อให้บริการวิชาการด้านเทคโนโลยีสารสนเทศแก่ชุมชนและสังคม '),
      Subject(
          subname: 'ข้อมูลติดต่อ',
          point:
              'ภาควิชาเทคโนโลยีสารสนเทศ\nคณะเทคโนโลยีและการจัดการอุตสาหกรรม\nมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ \n129 ม. 21 ต.เนินหอม อ.เมือง จ.ปราจีนบุรี 25230\nE-mail :it@itm.kmutnb.ac.th\nโทร. 037-217340 ต่อ 7065, 7066\nมือถือ 085-2850606'),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ข้อมูลภาควิชา",
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
              // InfoItem(),
              Image.network(
                  "https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.6435-9/84358930_3787036404647715_4342627452867051520_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGUXzfQH18dpnuL47LoUQuf5Il7D3wvBlDkiXsPfC8GUOMBN4BFXlbGyi-F_h3PCVay-dkNXl-dxUvYoARM4dhV&_nc_ohc=E609YgeBdUAAX9n-Wz7&_nc_ht=scontent.fbkk5-4.fna&oh=00_AfCXYQHlDE-D-FZq7-KUhJTsIo2tZwngmRJsqRWeIshRkQ&oe=6626A816"),
              SizedBox(
                height: 10,
              ),
              Column(
                children: dataItem.map<InfoItem>((Subject item) {
                  return InfoItem(
                    title: item.subname,
                    detail: item.point,
                  );
                }).toList(),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                    color: HexColor("0080C7"),
                    borderRadius: BorderRadius.circular(20)),
              ),
              const Center(
                child: Text(
                  "ประวัติความเป็นมา",
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
              const timelineLeft(
                isfirst: true,
                isLast: false,
                image: "https://www.fitm.kmutnb.ac.th/Images/kmitnb.png",
                title: "ปี พ.ศ.2537",
                subTitle:
                    "โครงการคณะอุตสาหกรรมศาสตร์ได้รับการบรรจุไว้ในแผนพัฒนาการศึกษาระดับอุดมศึกษา",
              ),
              const timelineRight(
                isLast: false,
                isfirst: false,
                title: "ปี พ.ศ.2538",
                subTitle: "จัดตั้งสาขาวิชาเทคโนโลยีสารสนเทศเพื่ออุตสาหกรรม",
                image: "https://www.fitm.kmutnb.ac.th/Images/kmutnb_1.png",
              ),
              const timelineLeft(
                image: "https://www.fitm.kmutnb.ac.th/Images/worawit.png",
                title: "ปี พ.ศ.2539",
                subTitle:
                    "คณะเทคโนโลยีและการจัดการอุตสาหกรรม ได้รับการจัดตั้งอย่างเป็นทางการ โดยประกาศในราชกิจจานุเบกษา",
                isfirst: false,
                isLast: false,
              ),
              const timelineRight(
                isfirst: false,
                isLast: false,
                image: "https://www.fitm.kmutnb.ac.th/Images/kmutnbold.png",
                title: "ปี พ.ศ.2540",
                subTitle: "จัดการศึกษาครั้งแรกที่จังหวัดปราจีนบุรี",
              ),
              const timelineLeft(
                image: "https://www.fitm.kmutnb.ac.th/Images/AN1.png",
                title: "ปี พ.ศ.2541",
                subTitle: "อาคารหลังแรกของ สจพ.ปราจีนบุรี แล้วเสร็จ",
                isfirst: false,
                isLast: false,
              ),
              const timelineRight(
                isfirst: false,
                isLast: false,
                image: "https://www.fitm.kmutnb.ac.th/Images/fitm42.png",
                title: "ปี พ.ศ.2542",
                subTitle: "อาคารคณะเทคโนโลยีและการจัดการอุตสาหกรรม แล้วเสร็จ",
              ),
              const timelineLeft(
                image: "https://www.fitm.kmutnb.ac.th/Images/Peerasak.png",
                title: "ปี พ.ศ.2547",
                subTitle:
                    "ผศ.พีระศักดิ์ เสรีกุล ดำรงตำแหน่งคณบดีคณะเทคโนโลยีและการจัดการอุตสาหกรรม",
                isfirst: false,
                isLast: false,
              ),
              const timelineRight(
                isfirst: false,
                isLast: false,
                image: "https://www.fitm.kmutnb.ac.th/Images/kmitnb-kmutnb.png",
                title: "ปี พ.ศ.2550",
                subTitle:
                    "สถาบันเทคโนโลยีพระจอมเกล้าพระนครเหนือ เปลี่ยนสถานภาพเป็น “มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ”",
              ),
              const timelineLeft(
                image: "https://www.fitm.kmutnb.ac.th/Images/Anirach.png",
                title: "ปี พ.ศ.2555",
                subTitle:
                    "รศ.ดร.อนิราช มิ่งขวัญ ดำรงตำแหน่งคณบดีคณะเทคโนโลยีและการจัดการอุตสาหกรรม",
                isfirst: false,
                isLast: false,
              ),
              const timelineRight(
                isfirst: false,
                isLast: false,
                image:
                    "https://www.fitm.kmutnb.ac.th/Images/FITM-LOGO-MODIFILED.png",
                title: "ปี พ.ศ.2556",
                subTitle:
                    "มีตราสัญลักษณ์ (logo) ของคณะเทคโนโลยี และการจัดการอุตสาหกรรมอย่างเป็นทางการ และใช้มาจนปัจจุบัน",
              ),
              const timelineLeft(
                image: "https://www.fitm.kmutnb.ac.th/Images/Khridsadakhon.png",
                title: "ปี พ.ศ.2563",
                subTitle:
                    "ผศ.ดร.กฤษฎากร บุดดาจันทร์ ดำรงตำแหน่งคณบดี คณะเทคโนโลยีและการจัดการอุตสาหกรรม",
                isfirst: false,
                isLast: true,
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

class InfoItem extends StatelessWidget {
  final String title, detail;
  const InfoItem({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 100,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: HexColor("98CFEE"),
              border: Border(
                top: BorderSide(color: HexColor("BCBCBC"), width: 2),
                right: BorderSide(color: HexColor("BCBCBC"), width: 2),
                left: BorderSide(color: HexColor("BCBCBC"), width: 2),
              ),
              borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(10), topEnd: Radius.circular(10))),
          child: Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("0080C7"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
            // borderRadius: BorderRadiusDirectional.only(

            // ),
            border: Border(
              top: BorderSide(color: HexColor("BCBCBC"), width: 2),
              right: BorderSide(color: HexColor("BCBCBC"), width: 2),
              left: BorderSide(color: HexColor("BCBCBC"), width: 2),
              // bottom: BorderSide(color: HexColor("BCBCBC"), width: 1),
            ),
            color: HexColor("FFFFF"),
          ),
          child: Text(detail),
        )
      ],
    );
  }
}

class timelineRight extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final bool isfirst;
  final bool isLast;
  const timelineRight({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isfirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isLast,
      isLast: isLast,
      alignment: TimelineAlign.center,
      beforeLineStyle: LineStyle(
        color: HexColor("0080C7"),
        thickness: 5,
      ),
      indicatorStyle: IndicatorStyle(
        width: 15,
        color: HexColor("0080C7"),
      ),
      startChild: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Text(
          title,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      endChild: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              image,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return loddingImgae(loadingProgress: loadingProgress);
              },
            ),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class timelineLeft extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final bool isfirst;
  final bool isLast;
  const timelineLeft({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isfirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.center,
      isFirst: isfirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 15,
        color: HexColor("0080C7"),
      ),
      beforeLineStyle: LineStyle(
        color: HexColor("0080C7"),
        thickness: 5,
      ),
      startChild: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              image,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return loddingImgae(loadingProgress: loadingProgress);
              },
            ),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      endChild: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
