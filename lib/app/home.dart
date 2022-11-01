import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 26, 164),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.science,
              size: 100,
            ),
            SizedBox(
              height: 150,
            ),
            Text("Stoon"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: BorderRadius.circular(20),
              child: const Text('Mulai'),
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
