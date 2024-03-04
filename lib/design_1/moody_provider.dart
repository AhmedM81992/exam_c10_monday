import 'package:exam_c10_monday/design_1/tabs/calender_tab.dart';
import 'package:exam_c10_monday/design_1/tabs/grid_tab.dart';
import 'package:exam_c10_monday/design_1/tabs/home_tab.dart';
import 'package:exam_c10_monday/design_1/tabs/profile_tab.dart';
import 'package:flutter/cupertino.dart';

class MoodyProvider extends ChangeNotifier {
  int index = 0;
  List<Widget> tabs = [HomeTab(), GridTab(), CalenderTab(), ProfileTab()];

  void changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
