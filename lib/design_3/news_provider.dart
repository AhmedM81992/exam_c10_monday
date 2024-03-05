import 'package:exam_c10_monday/design_3/tabs/chat_tab.dart';
import 'package:exam_c10_monday/design_3/tabs/insight_tab.dart';
import 'package:exam_c10_monday/design_3/tabs/today_tab.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier {
  int index = 0;
  List<Widget> tabs = [TodayTab(), InsightTab(), ChatTab()];

  void changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
