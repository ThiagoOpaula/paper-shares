import 'package:flutter/material.dart';
//import 'package:paper_shares/login/login_page.dart';
import 'dashboard/dashboard_page.dart';
//import 'package:papershare/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DashboardPage(),
    );
  }
}
