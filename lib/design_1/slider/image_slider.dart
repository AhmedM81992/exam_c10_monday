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
    return CarouselSlider(
      items: imgList
          .map((item) => Container(
                child: Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: 1000,
                  ),
                ),
              ))
          .toList(),
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 2.0,
        enlargeCenterPage: false,
      ),
    );
  }
}
