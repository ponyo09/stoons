import 'package:flutter/material.dart';

class registPage extends StatefulWidget {
  const registPage({super.key});

  @override
  State<registPage> createState() => _registPageState();
}

class _registPageState extends State<registPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
        child: Text("ini regist"),
      )),
    );
  }
}
