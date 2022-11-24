import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ini Settings"),
          MaterialButton(
            onPressed: () {},
            color: Colors.deepPurpleAccent,
            child: Text("Sign OUT!"),
          )
        ],
      )),
    );
  }
}
