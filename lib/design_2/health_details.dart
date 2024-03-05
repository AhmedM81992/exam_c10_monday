import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthDetails extends StatelessWidget {
  const HealthDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFF8F9FC),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Image.asset(
                  "lib/design_2/assets/images/heart.png",
                  scale: 2,
                ),
                SizedBox(width: 4.8),
                Text("Heart Rate",
                    style: GoogleFonts.inter(
                        fontSize: 12, fontWeight: FontWeight.w400))
              ],
            ),
            Row(
              children: [
                Text("81",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                Text("BPM",
                    style: GoogleFonts.inter(
                        fontSize: 14, fontWeight: FontWeight.w500))
              ],
            )
          ]),
          VerticalDivider(color: Colors.black, indent: 16, endIndent: 16),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Image.asset(
                  "lib/design_2/assets/images/list.png",
                  scale: 2,
                ),
                SizedBox(width: 4.8),
                Text(
                  "To-do",
                  style: GoogleFonts.inter(
                      fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              children: [
                Text("32,5",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                Text("%",
                    style: GoogleFonts.inter(
                        fontSize: 14, fontWeight: FontWeight.w500))
              ],
            )
          ]),
          VerticalDivider(color: Colors.black, indent: 16, endIndent: 16),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Image.asset(
                  "lib/design_2/assets/images/burn.png",
                  scale: 2,
                ),
                SizedBox(width: 4.8),
                Text(
                  "Calo",
                  style: GoogleFonts.inter(
                      fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              children: [
                Text("1000",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                Text("Cal",
                    style: GoogleFonts.inter(
                        fontSize: 14, fontWeight: FontWeight.w500))
              ],
            )
          ]),
        ],
      ),
    );
  }
}
