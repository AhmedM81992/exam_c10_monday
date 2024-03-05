import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:exam_c10_monday/design_2/list/mini_lists/morning_yoga.dart';
import 'package:exam_c10_monday/design_2/list/mini_lists/others.dart';
import 'package:exam_c10_monday/design_2/list/mini_lists/plank_exercise.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

List<Widget> myContainers = [Morningyoga(), PlankExercise(), Others()];

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ContainedTabBarView(
          tabs: [
            Text('All Type',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085))),
            Text('Full Body',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085))),
            Text('Upper',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085))),
            Text('Lower',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085))),
          ],
          tabBarProperties: TabBarProperties(
            height: 32.0,
            labelStyle:
                GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
            indicatorColor: Color(0xFF363F72),
            indicatorWeight: 1.0,
            labelColor: Color(0xFF363F72),
            unselectedLabelColor: Color(0xFF667085),
          ),
          views: [
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(title: myContainers[index]);
                    },
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: 3)),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(title: myContainers[index]);
                    },
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: 3)),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(title: myContainers[index]);
                    },
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: 3)),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(title: myContainers[index]);
                    },
                    separatorBuilder: (context, index) => SizedBox(),
                    itemCount: 3)),
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
