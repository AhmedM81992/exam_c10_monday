import 'package:exam_c10_monday/design_3/slider/slider_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList = [
  'lib/design_1/assets/images/frame2.png',
  'lib/design_1/assets/images/frame3.png',
  'lib/design_1/assets/images/frame4.png',
];

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SliderImage(imgList: imgList)],
    );
  }
}
