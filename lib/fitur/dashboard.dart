import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 26, 164),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          ),
        ),
      ),
    );
  }
}
