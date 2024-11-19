import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screen/dashboardScreen.dart';
import 'package:flutter_application_1/screen/homeScreen.dart';
import 'package:flutter_application_1/screen/pdfview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FITM ',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: HexColor("0080C7")),
          useMaterial3: false,
          textTheme: GoogleFonts.baiJamjureeTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
              toolbarTextStyle: GoogleFonts.baiJamjuree(
                textStyle: Theme.of(context).textTheme.displayLarge,
                // fontSize: 18,
                // fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic,
              ),
              centerTitle: true,
              titleTextStyle: const TextStyle(
                // fontFamily: 'kanit',
                color: Colors.white,
              ),
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: HexColor("0080C7")),
        ),
        home: const HomeScreen());
  }
}

class btnDd extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Icon iconuser;
  const btnDd({
    super.key,
    required this.text,
    required this.onPressed,
    required this.iconuser,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor("E5E7E9")),
            child: iconuser,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}

class buttonDashBoard extends StatelessWidget {
  final String textData;
  const buttonDashBoard({
    super.key,
    required this.textData,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            // Add your button press logic here
            // print('Button Pressed');
          },
          child: Column(
            children: [
              Container(
                height: 100,
                width: 88,
                decoration: BoxDecoration(
                    color: HexColor("E5E7E9"),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  textData,
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              )
            ],
          )),
    );
  }
}
