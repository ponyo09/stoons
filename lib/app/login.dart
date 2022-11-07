import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 26, 164),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.grey[300],
            fontSize: 36,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          ),
        ),
      ),
    );
  }
}
