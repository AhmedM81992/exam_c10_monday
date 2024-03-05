import 'package:exam_c10_monday/design_3/slider/button_slider/buttons_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> buttonsList = [
  ButtonTheme(
    minWidth: 132,
    height: 40,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color(0xFFE4E7EC)))),
        child: Text("Discover")),
  ),
  ButtonTheme(
    minWidth: 132,
    height: 40,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color(0xFFE4E7EC)))),
        child: Text("News")),
  ),
  ButtonTheme(
    minWidth: 132,
    height: 40,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            minimumSize: Size(132, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color(0xFFE4E7EC)))),
        child: Text("Most Viewed")),
  ),
  ButtonTheme(
    minWidth: 132,
    height: 40,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color(0xFFE4E7EC)))),
        child: Text("Saved")),
  ),
];

class ListForButtons extends StatelessWidget {
  const ListForButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ButtonsSlider(buttonsList: buttonsList)],
    );
  }
}
