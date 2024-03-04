import 'package:exam_c10_monday/design_1/moody.dart';
import 'package:exam_c10_monday/design_1/moody_provider.dart';
import 'package:exam_c10_monday/design_1/tabs/home_tab.dart';
import 'package:exam_c10_monday/design_2/work_out.dart';
import 'package:exam_c10_monday/design_3/news.dart';
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
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Moody.routeName,
      theme: MyThemeData.lightTheme,
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
