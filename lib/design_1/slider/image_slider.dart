import 'package:exam_c10_monday/design_1/slider/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList = [
  'lib/design_3/assets/images/frame1.png',
  'lib/design_3/assets/images/frame3.png',
];

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [PageIndicator(imgList: imgList)],
    );
  }
}
