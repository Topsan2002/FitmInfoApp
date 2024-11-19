import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ViewPdfScreen extends StatefulWidget {
  const ViewPdfScreen({super.key});

  @override
  State<ViewPdfScreen> createState() => _ViewPdfScreenState();
}

class _ViewPdfScreenState extends State<ViewPdfScreen> {
  String filepath = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setValue();
  }

  void setValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      filepath = prefs.getString("filepath")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ภาควิชาเทคโนโลยีสารสนเทศ",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: filepath == ""
          ? const Text("กำลังอ่านไฟล์")
          : SfPdfViewer.asset(
              filepath,
              // pageLayoutMode: ,
              // pageLayoutMode: PdfPageLayoutMode.continuous,
            ),
    );
  }
}
