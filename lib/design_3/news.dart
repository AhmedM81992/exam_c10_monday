import 'package:exam_c10_monday/design_3/news_provider.dart';
import 'package:exam_c10_monday/design_3/slider/list_for_slider.dart';
import 'package:exam_c10_monday/design_3/slider/slider_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  static const String routeName = "PageThree";
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NewsProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/design_3/assets/images/icon.png",
              scale: 0.7,
            ),
            Text(
              "AliceCare",
              style: GoogleFonts.milonga(
                  fontSize: 45, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Articles, Video, Audio and More...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "lib/design_3/assets/images/buttons.png",
              scale: 1.1,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hot topics",
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
                        color: Color(0xFF6941C6),
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
              Container(
                  width: 350,
                  height: 203,
                  child: SliderImage(imgList: imgList)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Get Tips",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Image.asset(
            "lib/design_3/assets/images/doctor.png",
            scale: .85,
          ),
          Row(
            children: [
              Text(
                "Hot topics",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  "See more >",
                  style: TextStyle(
                      color: Color(0xFF6941C6),
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
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
          selectedItemColor: Color(0xFF6941C6),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view), label: "Insights"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
          ],
        ),
      ),
    );
  }
}
