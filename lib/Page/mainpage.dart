import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stoon/Page/dashboard.dart';
import 'package:stoon/Page/setting.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final screens = [
    Center(child: DashBoard()),
    Center(
      child: Text(
        'profile',
        style: GoogleFonts.bebasNeue(fontSize: 36),
      ),
    ),
    Center(
      child: Text(
        'test',
        style: GoogleFonts.bebasNeue(fontSize: 36),
      ),
    ),
    Center(
      child: SettingsPage(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      //navbar
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 6.0),
          child: Container(
            child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.deepPurpleAccent,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home,
                ),
                GButton(
                  icon: Icons.leaderboard,
                ),
                GButton(
                  icon: Icons.task,
                ),
                GButton(icon: Icons.settings)
              ],
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: Center(child: screens.elementAt(_selectedIndex)),
    );
  }
}
