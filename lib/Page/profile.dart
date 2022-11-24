import 'package:flutter/material.dart';
import 'package:stoon/Page/mainpage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _mainpage() async {
      Navigator.pushReplacementNamed(context, '/mainpage');
    }

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.grey,
        child: Text("ini Profile"),
      ),
    );
  }
}
