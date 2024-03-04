import 'package:exam_c10_monday/design_1/slider/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList = [
  'https://cdn1.vectorstock.com/i/1000x1000/56/15/trendy-lettering-positive-vibes-vector-10685615.jpg',
  'https://cdn1.vectorstock.com/i/1000x1000/56/15/trendy-lettering-positive-vibes-vector-10685615.jpg',
  'https://cdn1.vectorstock.com/i/1000x1000/56/15/trendy-lettering-positive-vibes-vector-10685615.jpg'
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
