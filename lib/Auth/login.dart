import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stoon/Page/dashboard.dart';
import 'package:http/http.dart' as http;

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  String msg = '';

  Future<List> _login() async {
    final response = await http
        .post(Uri.parse("http://10.0.2.2/stoon/user.php"), body: {
      "email": _emailController.text.trim(),
      "password": _passController.text.trim()
    });

    var datauser = json.decode(response.body);
    if (datauser.length == 0) {
      setState(() {
        msg = "invalid email or password";
      });
    } else {
      if (datauser[0]['email'] == _emailController.text.trim()) {
        Navigator.pushReplacementNamed(context, '/mainpage');
      } else if (datauser[0]['password'] == _passController.text.trim()) {
        Navigator.pushReplacementNamed(context, '/mainpage');
      }
    }
    return datauser;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  Future<void> _regist() async {
    Navigator.pushReplacementNamed(context, '/register');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(8),
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
                                controller: _emailController,
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
                                controller: _passController,
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
                          child: GestureDetector(
                            onTap: _login,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
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
                              child: Text("not registered yet ?"),
                            ),
                            GestureDetector(
                              child: Text(
                                "Register",
                                style: GoogleFonts.sourceSansPro(
                                    color: Colors.blue),
                              ),
                              onTap: _regist,
                            ),
                            SizedBox(
                              height: 55,
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
      ),
    );
  }
}
