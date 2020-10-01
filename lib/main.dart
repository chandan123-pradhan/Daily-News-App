  import 'package:flutter/material.dart';

import 'home_page/busines_news/business_news.dart';
import 'home_page/home_page_all_tabls/home_page_all_tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AllTabsHomeScreen(),
    );
  }
}

