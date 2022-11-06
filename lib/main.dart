import 'package:flutter/material.dart';
import 'app/home.dart';
import 'app/login.dart';
import 'app/register.dart';

void main() {
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
      },
    );
  }
}
