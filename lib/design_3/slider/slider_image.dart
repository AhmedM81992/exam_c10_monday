import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  List<String> imgList;

  SliderImage({required this.imgList});

  @override
  _SliderImageState createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        child: Stack(
          children: [
            Image.asset(
              item,
              fit: BoxFit.cover,
              width: 1000,
            ),
          ],
        ),
      ),
    ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 1.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                //vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
