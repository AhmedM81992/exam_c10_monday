import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 240,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 8.0, bottom: 8, left: 8.0, top: 0),
            child: Row(
              children: [
                Text(
                  "Get Tips",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Color(0xFFF2F4F7)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child:
                      Image.asset("lib/design_3/assets/images/femaledoc.png"),
                ),
                Container(
                  width: 326,
                  height: 196,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 193,
                          height: 45,
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              "Connect with doctors & get suggestions",
                              style: GoogleFonts.inter(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 193,
                        height: 45,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 1.0),
                          child: Text(
                            "Connect now and get expert insights ",
                            style: GoogleFonts.inter(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, right: 90),
                        child: Container(
                          width: 104,
                          height: 36,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Color(0xFF7F56D9),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Text("View Details",
                                style: GoogleFonts.inter(
                                    color: Colors.white, fontSize: 14)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
