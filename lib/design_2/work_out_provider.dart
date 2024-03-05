import 'package:exam_c10_monday/design_2/tabs/chart_tab.dart';
import 'package:exam_c10_monday/design_2/tabs/home_tab.dart';
import 'package:exam_c10_monday/design_2/tabs/navigation_tab.dart';
import 'package:exam_c10_monday/design_2/tabs/profile_tab.dart';
import 'package:flutter/material.dart';

class WorkOutProvider extends ChangeNotifier {
  int index = 0;
  List<Widget> tabs = [HomeTab(), NavigationTab(), ChartTab(), ProfileTab()];

  void changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
