import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stoon/Page/dashboard.dart';
import 'package:stoon/Page/mainpage.dart';
import 'package:stoon/Page/profile.dart';
import 'Auth/home.dart';
import 'Auth/login.dart';
import 'Auth/register.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => new registPage(),
        '/login': (BuildContext context) => new loginPage(),
        '/mainpage': (BuildContext context) => new MainPage(),
        '/profile': (BuildContext context) => new Profile(),
      },
    );
  }
}
