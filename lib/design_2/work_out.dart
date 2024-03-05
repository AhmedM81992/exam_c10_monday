import 'package:exam_c10_monday/design_2/health_details.dart';
import 'package:exam_c10_monday/design_2/list/my_list.dart';
import 'package:exam_c10_monday/design_2/work_out_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Workout extends StatelessWidget {
  static const String routeName = "WorkOut";
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<WorkOutProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Container(
                    width: 56.42,
                    height: 56.42,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                          "lib/design_2/assets/images/profilepic.png"),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Jade",
                      style: GoogleFonts.inter(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Ready to workout?",
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 70.53),
              InkWell(
                  onTap: () {},
                  child: ImageIcon(
                      AssetImage("lib/design_2/assets/images/bell.png")))
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 27.0),
            child: Container(
              width: 326,
              height: 788,
              child: Column(
                children: [
                  SizedBox(),
                  HealthDetails(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
                        child: Text(
                          "Workout Programs",
                          style: GoogleFonts.inter(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  MyList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          width: double.infinity,
          child: BottomNavigationBar(
            onTap: (value) {
              provider.changeIndex(value);
            },
            currentIndex: provider.index,
            selectedItemColor: Color(0xFF363F72),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: IconThemeData(color: Color(0xFF363F72), fill: 1),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
              BottomNavigationBarItem(
                  icon: Icon(Icons.navigation_outlined), label: "."),
              BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: "."),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "."),
            ],
            selectedLabelStyle:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          ),
        ));
  }
}
