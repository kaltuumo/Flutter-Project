// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mylogin_191/Files/quiz_screen.dart';
import 'package:mylogin_191/widgets/imagewidget.dart';

import '../widgets/buttonWidget.dart';
import '../widgets/mytext.dart';
import 'SignUp.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final auth = FirebaseAuth.instance;
  loginpg() async {
    try {
      var res = await auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      print("success");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // image
            ImageWidget(
              ImageAsset: 'images/log.png',
              ImageHeight: 250,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: Container(
                // color: Colors.amber,
                width: double.infinity,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // login lable
                    const MyText(MylableText: 'Login', FontSize: 40),
                    SizedBox(
                      height: 30,
                    ),

                    // input username/password
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Email ID",
                        prefixIcon: Icon(Icons.email_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined),
                      ),
                    ),

                    // login button
                    SizedBox(
                      height: 30,
                      // width: 900,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        loginpg();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => QuizScreen(),
                          ),
                        );
                      },
                      child: Text("Login"),
                    ),
                    // registor now
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Register New User ? ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => SignUp()),
                                ));
                          },
                          child: Text('Registor',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 28, 79, 248),
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
