import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class registPage extends StatefulWidget {
  const registPage({super.key});

  @override
  State<registPage> createState() => _registPageState();
}

class _registPageState extends State<registPage> {
  @override
  Future<void> _login() async {
    Navigator.pushReplacementNamed(context, '/login');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Container(
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("assets/1046269.png"),
                )),
            Text(
              "Stoon",
              style: GoogleFonts.indieFlower(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Welcome!",
                        style: GoogleFonts.indieFlower(
                            fontWeight: FontWeight.bold, fontSize: 36),
                      ),
                      Text(
                        'Register Below with your details',
                        style: GoogleFonts.indieFlower(fontSize: 22),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Username",
                                hintStyle: GoogleFonts.indieFlower(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: GoogleFonts.indieFlower(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      //password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "New Password",
                                hintStyle: GoogleFonts.indieFlower(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Confirm Password",
                                hintStyle: GoogleFonts.indieFlower(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                              child: Text(
                            'Sign Up',
                            style: GoogleFonts.indieFlower(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Already have account ?"),
                          ),
                          GestureDetector(
                            child: Text(
                              "Login",
                              style:
                                  GoogleFonts.sourceSansPro(color: Colors.blue),
                            ),
                            onTap: _login,
                          ),
                          SizedBox(
                            height: 32,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
