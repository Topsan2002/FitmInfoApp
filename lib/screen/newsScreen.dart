import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/detailNews.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];
    List<NewsItemData> newsItemData = [
      NewsItemData(
          img: 'assets/images/news/5.jpeg',
          title:
              '📣 จบสายศิลป์ หรือสายอื่นๆ สามารถสมัครเรียนด้านคอมพิวเตอร์ จะเป็น วท.บ. หรือ วศ.บ. ก็ได้แล้วน้าาาาา (อยากจบคอมพิวเตอร์ พระนครเหนือ เชิญทางนี้)',
          detail:
              '📣รับสมัครนักศึกษาใหม่ โครงการรับตรงใช้คะแนน A-Level\n✅ หลักสูตรเทคโนโลยีสารสนเทศ (IT) (ว.ท.บ. 4 ปี)\nรหัสสาขาวิชา 06101\n✅ หลักสูตรวิศวกรรมสารสนเทศและเครือข่าย (INE) (วศ.บ. 4 ปี)\nรหัสสาขาวิชา 06105\n\n🔥โครงการรับตรงใช้คะแนน A-Level รหัสวิชา 61 คณิตศาสตร์ประยุกต์ 1 (พื้นฐาน+เพิ่มเติม)\n\n🔥 สำหรับผู้มีวุฒิ ม.6 ทุกแผนการเรียน\n\nรับสมัครตั้งแต่วันนี้ถึงวันที่ 31 มีนาคม 2567'),
      NewsItemData(
        img: 'assets/images/news/1.jpeg',
        title:
            '📣รับสมัครนักศึกษาใหม่ หลักสูตรเทคโนโลยีสารสนเทศ (IT) (ว.ท.บ. 4 ปี)',
        detail:
            '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ม.6 ทุกแผนการเรียน และ ปวช.ทุกสาขาวิชา โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี \n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567',
      ),
      NewsItemData(
          img: 'assets/images/news/2.jpeg',
          title:
              '📣รับสมัครนักศึกษาใหม่ หลักสูตรวิศวกรรมสารสนเทศและเครือข่าย (INE) (วศ.บ. 4 ปี)',
          detail:
              '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ม.6 ทุกแผนการเรียน และ ปวช.ทุกสาขาวิชา โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี\n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567'),
      NewsItemData(
          img: 'assets/images/news/3.jpeg',
          title:
              '🇨🇳 รับสมัครนักศึกษาใหม่ หลักสูตรวิศวกรรมสารสนเทศและเครือข่าย (INET) (วศ.บ. 3 ปี) หลักสูตรต่อเนื่อง',
          detail:
              '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ปวส. ทุกแผนการเรียน โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี\n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567'),
      NewsItemData(
          img: 'assets/images/news/4.jpeg',
          title:
              '📣 รับสมัครนักศึกษาใหม่ หลักสูตรเทคโนโลยีสารสนเทศ (ITI) (อส.บ. 2 ปี) หลักสูตรต่อเนื่อง',
          detail:
              '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ปวส. ทุกแผนการเรียน โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี\n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567'),

      // NewsItemData(
      //     img:
      //         'https://scontent.fbkk5-7.fna.fbcdn.net/v/t39.30808-6/386545590_784169013714738_7443173488150396151_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEpFkp7nS_5nELSmLF2DYpZEJyZu0ny2OYQnJm7SfLY5itdS7GnxPXFBGhFMX1EBpypSFWpaUcGJLO192l2W5wf&_nc_ohc=1csmnc7ccI4AX89QzrE&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfB4gdLkgZbr-t2tyjPeZZOdTKx_bsLnPZrrkYr0zYtg0w&oe=66037BF3',
      //     title: '📣นักศึกษา FITM คว้ารางวัลจาก Thailand Cyber Top Talent 2023',
      //     detail:
      //         'Congratulations ขอแสดงความยินดี กับนายธนภูมิ อุ่นจิตร และนายชยังกูร ศรีวงษ์ นักศึกษาจากภาควิชาเทคโนโลยีสารสนเทศ(IT) คณะเทคโนโลยีและการจัดการอุตสาหกรรม(FITM) มหาวิทยาลัยพระจอมเกล้าพระนครเหนือ วิทยาเขตปราจีนบุรี สมาชิกทีม Stargazers ที่ได้คว้ารางวัลชนะเลิศอันดับ 3 พร้อมเงินรางวัล  20,000 บาท จากการแข่งขัน “Thailand Cyber Top Talent 2023”  เมื่อวันเสาร์ที่ 30 กันยายน 2566 ที่ผ่านมา ณ เซ็นทารา แกรนด์ เซ็นทรัลพลาซา ลาดพร้าว กรุงเทพฯ'),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ข่าวสาร",
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
                      // Navigator.pushReplacement(
                      //   context,
                      //   CupertinoPageRoute(
                      //       builder: (context) => const NewsScreen()),
                      // )
                    }
                }),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Image.network(
              "https://www.fitm.kmutnb.ac.th/JSlider/img/FITMDEK67.jpg",
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return loddingImgae(
                  loadingProgress: loadingProgress,
                );
              },
            ),
            Column(
              children: newsItemData.map<newsItem>((NewsItemData item) {
                return newsItem(
                  imglink: item.img,
                  title: item.title,
                  detail: item.detail,
                );
              }).toList(),
            ),
          ],
        ));
  }
}

class newsItem extends StatelessWidget {
  // final VoidCallback onPressed;
  final String imglink;
  final String title, detail;
  const newsItem({
    super.key,
    // required this.onPressed,
    required this.imglink,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      padding: const EdgeInsets.all(10),
      // height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: TextButton(
        onPressed: () async {
          // Obtain shared preferences.
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('title', title);
          await prefs.setString('detail', detail);
          await prefs.setString('img', imglink);
          // Save an list of strings to 'items' key.
          await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);

          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            CupertinoPageRoute(builder: (context) => const NewsDetail()),
          );
        },
        child: Column(
          children: [
            Image.asset(
              // width: double.infinity,
              imglink,
              // loadingBuilder: (BuildContext context, Widget child,
              //     ImageChunkEvent? loadingProgress) {
              //   if (loadingProgress == null) {
              //     return child;
              //   }
              //   return loddingImgae(
              //     loadingProgress: loadingProgress,
              //   );
              // },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            // Text(
            //   detail,
            //   style: const TextStyle(
            //     color: Colors.black,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class NewsItemData {
  String img, title, detail;
  NewsItemData({
    required this.img,
    required this.title,
    required this.detail,
  });
}
