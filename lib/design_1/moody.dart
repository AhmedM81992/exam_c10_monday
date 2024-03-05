import 'package:exam_c10_monday/design_1/moody_provider.dart';
import 'package:exam_c10_monday/design_1/slider/image_slider.dart';
import 'package:exam_c10_monday/design_1/slider/page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class Moody extends StatelessWidget {
  static const String routeName = "Moody";
  const Moody({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MoodyProvider>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("lib/design_1/assets/images/logo.png"),
          title: Text("Moody"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {}, child: Icon(Icons.notifications)),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello, ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Sara Rose",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "How are you feeling today ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFE4E7EC)),
                          child: Image.asset(
                            "lib/design_1/assets/images/face1.png",
                            scale: 0.8,
                          ),
                        ),
                        Text("Love")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFE4E7EC)),
                          child: Image.asset(
                            "lib/design_1/assets/images/face2.png",
                            scale: 0.8,
                          ),
                        ),
                        Text("Cool")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFE4E7EC)),
                          child: Image.asset(
                            "lib/design_1/assets/images/face3.png",
                            scale: 0.8,
                          ),
                        ),
                        Text("Happy")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFFE4E7EC)),
                          child: Image.asset(
                            "lib/design_1/assets/images/face4.png",
                            scale: 0.8,
                          ),
                        ),
                        Text("sad")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Feature",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "lib/design_1/assets/images/box1.png",
                      scale: 0.8,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "lib/design_1/assets/images/box2.png",
                      scale: 0.8,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "lib/design_1/assets/images/box3.png",
                      scale: 0.8,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 8),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "lib/design_1/assets/images/box4.png",
                      scale: 0.8,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
