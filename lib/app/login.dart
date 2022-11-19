import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stoon/fitur/dashboard.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

late bool _passwordVisible;

class _loginPageState extends State<loginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  Future<void> _regist() async {
    Navigator.pushReplacementNamed(context, '/register');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 58, 26, 164),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: 200,
                height: 250,
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: AssetImage("assets/1046269.png"),
                )),
            Text(
              "Stoon",
              style: GoogleFonts.indieFlower(
                  fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
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
                        height: 10,
                      ),
                      Text(
                        "Hello Again!",
                        style: GoogleFonts.indieFlower(
                            fontWeight: FontWeight.bold, fontSize: 36),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Welcome back, you\'ve been missed',
                        style: GoogleFonts.indieFlower(fontSize: 22),
                      ),
                      SizedBox(
                        height: 30,
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
                                hintText: "Password",
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
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                              child: Text(
                            'Login',
                            style: GoogleFonts.indieFlower(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("not registered yet ?"),
                          ),
                          GestureDetector(
                            child: Text(
                              "Register",
                              style:
                                  GoogleFonts.sourceSansPro(color: Colors.blue),
                            ),
                            onTap: _regist,
                          ),
                          SizedBox(
                            height: 50,
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
