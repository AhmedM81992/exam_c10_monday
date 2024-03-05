import 'package:exam_c10_monday/design_3/my_boxs/my_2nd_box.dart';
import 'package:exam_c10_monday/design_3/my_boxs/my_box.dart';
import 'package:exam_c10_monday/design_3/news_provider.dart';
import 'package:exam_c10_monday/design_3/slider/button_slider/buttons_slider.dart';
import 'package:exam_c10_monday/design_3/slider/button_slider/list_for_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  static const String routeName = "News";
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NewsProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 390,
          height: 747,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  enabled: true,
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
              ButtonsSlider(buttonsList: buttonsList),
              Container(width: 350, height: 245, child: My2ndBox()),
              MyBox(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 340,
                  height: 28,
                  child: Row(
                    children: [
                      Text(
                        "Cycle Phases and Period",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "See all >",
                          style: TextStyle(
                              color: Color(0xFF6941C6),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
          selectedItemColor: Color(0xFF6941C6),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Color(0xFF6941C6), fill: 1),
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
