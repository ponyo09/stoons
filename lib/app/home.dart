import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(50))),
                      builder: (BuildContext context) {
                        return Container(
                          height: 290,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Column(children: [
                              Center(
                                child: Text(
                                  "Apakah Kamu sudah punya akun, jika sudah kamu dapat langsung tap button login dibawah ini, atau kamu bisa mendaftar dengan cara menekan button daftar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
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
                                            color: Color.fromARGB(
                                                255, 58, 26, 164),
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
                                            color: Color.fromARGB(
                                                255, 58, 26, 164),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Daftar',
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
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Mulai',
                      style: TextStyle(
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
      )),
    );
  }
}
