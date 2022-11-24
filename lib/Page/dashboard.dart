import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Future<void> _profile() async {
    Navigator.pushReplacementNamed(context, '/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [],
          leading: IconButton(
            icon: Icon(
              Icons.person,
            ),
            onPressed: _profile,
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Welcome",
                  style: GoogleFonts.indieFlower(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Materi",
                              style: GoogleFonts.indieFlower(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.grey.shade300,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
