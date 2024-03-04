import 'package:exam_c10_monday/design_1/moody.dart';
import 'package:exam_c10_monday/design_2/work_out.dart';
import 'package:exam_c10_monday/design_3/news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Moody.routeName,
      // initialRoute: PageTwo.routeName,
      // initialRoute: PageThree.routeName,
      routes: {
        Moody.routeName: (context) => Moody(),
        Workout.routeName: (context) => Workout(),
        News.routeName: (context) => News(),
      },
    );
  }
}
