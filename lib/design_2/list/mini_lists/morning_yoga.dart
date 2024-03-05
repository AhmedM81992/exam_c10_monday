import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Morningyoga extends StatelessWidget {
  const Morningyoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFF8F9FC),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 191.32, top: 50),
            child: Image.asset(
              "lib/design_2/assets/images/yoga.png",
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 12, right: 30),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: Color(0xFFE4E7EC)))),
                    child: Text(
                      "7 Days",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Morning Yoga",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Improve mental focus.",
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/design_2/assets/images/clock.png",
                        scale: 2.5,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "30 mins",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
