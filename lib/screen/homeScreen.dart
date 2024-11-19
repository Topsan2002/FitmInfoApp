import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/acitivtyDetailScreen.dart';
import 'package:flutter_application_1/screen/activityScreen.dart';
import 'package:flutter_application_1/screen/courseScreen.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/hisScreen.dart';
import 'package:flutter_application_1/screen/locationScreen.dart';
import 'package:flutter_application_1/screen/newsScreen.dart';
import 'package:flutter_application_1/screen/pdfview.dart';
import 'package:flutter_application_1/screen/personScreen.dart';
import 'package:flutter_application_1/screen/roomImgScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // _getToken();
  }

  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.list,
      Icons.groups_2,
      Icons.menu_book_rounded,
      Icons.newspaper
    ];

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'gb6TLzU8Y0g',
      flags: const YoutubePlayerFlags(autoPlay: true, loop: true
          // mute: true,
          ),
    );
    List<NewsItemData> newsItemData = [
      NewsItemData(
          img: 'assets/images/news/5.jpeg',
          title:
              '📣 จบสายศิลป์ หรือสายอื่นๆ สามารถสมัครเรียนด้านคอมพิวเตอร์ จะเป็น วท.บ. หรือ วศ.บ. ก็ได้แล้วน้าาาาา (อยากจบคอมพิวเตอร์ พระนครเหนือ เชิญทางนี้)',
          detail:
              '📣รับสมัครนักศึกษาใหม่ โครงการรับตรงใช้คะแนน A-Level\n✅ หลักสูตรเทคโนโลยีสารสนเทศ (IT) (ว.ท.บ. 4 ปี)\nรหัสสาขาวิชา 06101\n✅ หลักสูตรวิศวกรรมสารสนเทศและเครือข่าย (INE) (วศ.บ. 4 ปี)\nรหัสสาขาวิชา 06105\n\n🔥โครงการรับตรงใช้คะแนน A-Level รหัสวิชา 61 คณิตศาสตร์ประยุกต์ 1 (พื้นฐาน+เพิ่มเติม)\n\n🔥 สำหรับผู้มีวุฒิ ม.6 ทุกแผนการเรียน\n\nรับสมัครตั้งแต่วันนี้ถึงวันที่ 31 มีนาคม 2567'),
      // NewsItemData(
      //   img: 'assets/images/news/1.jpeg',
      //   title:
      //       '📣รับสมัครนักศึกษาใหม่ หลักสูตรเทคโนโลยีสารสนเทศ (IT) (ว.ท.บ. 4 ปี)',
      //   detail:
      //       '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ม.6 ทุกแผนการเรียน และ ปวช.ทุกสาขาวิชา โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี \n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567',
      // ),
      // NewsItemData(
      //     img: 'assets/images/news/2.jpeg',
      //     title:
      //         '📣รับสมัครนักศึกษาใหม่ หลักสูตรวิศวกรรมสารสนเทศและเครือข่าย (INE) (วศ.บ. 4 ปี)',
      //     detail:
      //         '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ม.6 ทุกแผนการเรียน และ ปวช.ทุกสาขาวิชา โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี\n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567'),
      // NewsItemData(
      //     img: 'assets/images/news/3.jpeg',
      //     title:
      //         '🇨🇳 รับสมัครนักศึกษาใหม่ หลักสูตรวิศวกรรมสารสนเทศและเครือข่าย (INET) (วศ.บ. 3 ปี) หลักสูตรต่อเนื่อง',
      //     detail:
      //         '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ปวส. ทุกแผนการเรียน โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี\n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567'),
      // NewsItemData(
      //     img: 'assets/images/news/4.jpeg',
      //     title:
      //         '📣 รับสมัครนักศึกษาใหม่ หลักสูตรเทคโนโลยีสารสนเทศ (ITI) (อส.บ. 2 ปี) หลักสูตรต่อเนื่อง',
      //     detail:
      //         '✅ โควตาพื้นที่ ✅สำหรับผู้มีวุฒิ ปวส. ทุกแผนการเรียน โดยมีภูมิลำเนาหรือศึกษาอยู่ในสถานศึกษาที่ตั้งอยู่ในจังหวัดปราจีนบุรี นครนายก สระแก้ว ฉะเชิงเทรา นครราชสีมา ชลบุรี จันทบุรี ระยอง ตราด และสระบุรี\n🔴 รับสมัครตั้งแต่วันนี้ถึงวันที่ 5 มีนาคม 2567'),

      // NewsItemData(
      //     img:
      //         'https://scontent.fbkk5-7.fna.fbcdn.net/v/t39.30808-6/386545590_784169013714738_7443173488150396151_n.jpg?stp=cp6_dst-jpg&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEpFkp7nS_5nELSmLF2DYpZEJyZu0ny2OYQnJm7SfLY5itdS7GnxPXFBGhFMX1EBpypSFWpaUcGJLO192l2W5wf&_nc_ohc=1csmnc7ccI4AX89QzrE&_nc_ht=scontent.fbkk5-7.fna&oh=00_AfB4gdLkgZbr-t2tyjPeZZOdTKx_bsLnPZrrkYr0zYtg0w&oe=66037BF3',
      //     title: '📣นักศึกษา FITM คว้ารางวัลจาก Thailand Cyber Top Talent 2023',
      //     detail:
      //         'Congratulations ขอแสดงความยินดี กับนายธนภูมิ อุ่นจิตร และนายชยังกูร ศรีวงษ์ นักศึกษาจากภาควิชาเทคโนโลยีสารสนเทศ(IT) คณะเทคโนโลยีและการจัดการอุตสาหกรรม(FITM) มหาวิทยาลัยพระจอมเกล้าพระนครเหนือ วิทยาเขตปราจีนบุรี สมาชิกทีม Stargazers ที่ได้คว้ารางวัลชนะเลิศอันดับ 3 พร้อมเงินรางวัล  20,000 บาท จากการแข่งขัน “Thailand Cyber Top Talent 2023”  เมื่อวันเสาร์ที่ 30 กันยายน 2566 ที่ผ่านมา ณ เซ็นทารา แกรนด์ เซ็นทรัลพลาซา ลาดพร้าว กรุงเทพฯ'),
    ];
    bool searchBool = true;
    final _stream = StreamController();

    List<ActivityItem> activityItem = [
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
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ภาควิชาเทคโนโลยีสารสนเทศ",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.home), onPressed: () {}),
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
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const DashBoardScreen()),
                    )
                  }
                else if (index == 1)
                  {
                    Navigator.push(
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
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const NewsScreen()),
                    )
                  }
              }),
      backgroundColor: HexColor("#E5E5E5"),
      body: Container(
        decoration: BoxDecoration(color: HexColor("#E5E5E5")),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blue,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.blue,
                    handleColor: Colors.blue,
                  ),
                  onReady: () {
                    // set();
                    // _controller.addListener(listener);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const titleHome(
                  title: "ข่าวสาร",
                ),
                // StreamBuilder(

                Container(
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
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString(
                          'filepath', 'assets/file/news/6.pdf');
                      Navigator.push(
                        // ignore: use_build_context_synchronously
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const ViewPdfScreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/news/6.jpeg',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          ' 📣 ประกาศรายชื่อผู้ผ่านคัดเลือกเป็นนักศึกษาใหม่ คณะเทคโนโลยีและการจัดการอุตสาหกรรม มจพ. วิทยาเขตปราจีนบุรี ประจำปีการศึกษา 2567 โครงการรับตรงใช้คะแนน TGAT/TPAT',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
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
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const NewsScreen()),
                      );
                    },
                    child: const Text("อ่านเพิ่มเติม")),
                const SizedBox(
                  height: 5,
                ),
                const titleHome(
                  title: "กิจกรรม",
                ),
                // StreamBuilder(
                Column(
                  children: activityItem.map<Widget>((ActivityItem item) {
                    return WidgetActicityItem(
                      title: item.title,
                      detail: item.detail,
                      img: item.img,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const ActivityScreen()),
                      );
                    },
                    child: const Text("อ่านเพิ่มเติม")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetActicityItem extends StatelessWidget {
  final String title, detail;
  final List<String> img;
  const WidgetActicityItem({
    super.key,
    required this.title,
    required this.detail,
    required this.img,
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
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('title', title);
          await prefs.setString('detail', detail);
          await prefs.setStringList('imgList', img);
          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            CupertinoPageRoute(
              builder: (context) => const ActivityDetailScreen(),
            ),
          );
        },
        child: Column(
          children: [
            SizedBox(
              width: 500,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: img.map<Widget>((img) {
                  return Container(
                    // height: 600,
                    margin: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              img,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),
                            ),
                          ],
                        )),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class titleHome extends StatelessWidget {
  final String title;
  const titleHome({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: HexColor("0080C7")),
      child: Text(
        title,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ActivityItem {
  final String title, detail;
  final List<String> img;

  ActivityItem({
    required this.detail,
    required this.img,
    required this.title,
  });
}

class Searchitem {
  final String title, detail;
  final VoidCallback callback;

  Searchitem(
      {required this.title, required this.callback, required this.detail});
}
