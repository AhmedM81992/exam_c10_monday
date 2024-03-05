import 'package:exam_c10_monday/design_3/slider/list_for_slider.dart';
import 'package:exam_c10_monday/design_3/slider/slider_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My2ndBox extends StatelessWidget {
  const My2ndBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hot topics",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.only(right: 8.0, left: 8, bottom: 0, top: 0),
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
                width: 350, height: 203, child: SliderImage(imgList: imgList)),
          ],
        ),
      ],
    );
  }
}
