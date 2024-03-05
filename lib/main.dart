import 'package:exam_c10_monday/design_1/moody.dart';
import 'package:exam_c10_monday/design_1/moody_provider.dart';
import 'package:exam_c10_monday/design_1/tabs/home_tab.dart';
import 'package:exam_c10_monday/design_2/list/my_list_provider.dart';
import 'package:exam_c10_monday/design_2/work_out.dart';
import 'package:exam_c10_monday/design_2/work_out_provider.dart';
import 'package:exam_c10_monday/design_3/news.dart';
import 'package:exam_c10_monday/design_3/news_provider.dart';
import 'package:exam_c10_monday/main_provider.dart';
import 'package:exam_c10_monday/my_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider()),
        ChangeNotifierProvider(create: (context) => MoodyProvider()),
        ChangeNotifierProvider(create: (context) => WorkOutProvider()),
        ChangeNotifierProvider(create: (context) => MyListProvider()),
        ChangeNotifierProvider(create: (context) => NewsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Moody.routeName,
      theme: MyThemeData.lightTheme,
      //initialRoute: Workout.routeName,
      //initialRoute: News.routeName,
      routes: {
        Moody.routeName: (context) => Moody(),
        Workout.routeName: (context) => Workout(),
        News.routeName: (context) => News(),
      },
    );
  }
}
