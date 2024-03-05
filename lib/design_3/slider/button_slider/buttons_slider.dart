import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ButtonsSlider extends StatefulWidget {
  List<Widget> buttonsList;
  ButtonsSlider({required this.buttonsList});

  @override
  State<ButtonsSlider> createState() => _ButtonsSliderState();
}

class _ButtonsSliderState extends State<ButtonsSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttonsSliders = widget.buttonsList
        .map((item) => Container(
              width: 150,
              child: item,
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: buttonsSliders,
          options: CarouselOptions(
              pageSnapping:
                  false, //stops sudden changes to elements when swiping
              autoPlay: false,
              enlargeCenterPage: false,
              enableInfiniteScroll: false, //stops infinite scrolling
              padEnds: false, //removed space at the ends of the list
              viewportFraction:
                  0.4, //adjusts the distance between each viewed item on the screen
              aspectRatio: 9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
      ],
    );
  }
}
