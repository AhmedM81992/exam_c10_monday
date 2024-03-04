import 'package:exam_c10_monday/design_1/moody_provider.dart';
import 'package:exam_c10_monday/design_1/slider/image_slider.dart';
import 'package:exam_c10_monday/design_1/slider/page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Moody extends StatelessWidget {
  static const String routeName = "PageOne";
  const Moody({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MoodyProvider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("lib/design_1/assets/images/logo.png"),
          title: Text("Moody"),
          actions: [Icon(Icons.notifications)],
        ),
        body: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Hello, Sara Rose",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "How are y feeling today",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "lib/design_1/assets/images/frame.png",
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Feature",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "See more >",
                        style: TextStyle(
                            color: Color(0xFF027A48),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 350, height: 203, child: ImageSlider()),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Exercise",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "See more >",
                        style: TextStyle(
                            color: Color(0xFF027A48),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "lib/design_1/assets/images/component1.png",
                  alignment: Alignment.center,
                  scale: 0.8,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 90,
          width: double.infinity,
          child: BottomNavigationBar(
            onTap: (value) {
              provider.changeIndex(value);
            },
            currentIndex: provider.index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          ),
        ));
  }
}
