import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _login() async {
    Navigator.pushReplacementNamed(context, '/login');
  }

  Future<void> _regist() async {
    Navigator.pushReplacementNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(10),
              child: Image(
                image: AssetImage("assets/1046269.png"),
              ),
            ),
            Text(
              "Stoon",
              style: GoogleFonts.indieFlower(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Container(
                          height: 290,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(children: [
                              Center(
                                child: Text(
                                  "Apakah Kamu sudah punya akun, jika sudah kamu dapat langsung tap button login dibawah ini, atau kamu bisa mendaftar dengan cara menekan button daftar",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.indieFlower(fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: GestureDetector(
                                        onTap: _login,
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurpleAccent,
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Login',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: GestureDetector(
                                        onTap: _regist,
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurpleAccent,
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Register',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        );
                      });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mulai',
                          style: GoogleFonts.indieFlower(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Icon(Icons.play_arrow),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
