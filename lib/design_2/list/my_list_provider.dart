import 'package:exam_c10_monday/design_2/list/lists/all_type_list.dart';
import 'package:exam_c10_monday/design_2/list/lists/full_body_list.dart';
import 'package:exam_c10_monday/design_2/list/lists/lower_list.dart';
import 'package:exam_c10_monday/design_2/list/lists/upper_list.dart';
import 'package:flutter/cupertino.dart';

class MyListProvider extends ChangeNotifier {
  int index = 0;
  List<Widget> tabs = [AllTypeList(), FullBodyList(), UpperList(), LowerList()];

  void changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
