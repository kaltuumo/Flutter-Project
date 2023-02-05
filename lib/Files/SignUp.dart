import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/TextfieldWidget.dart';
import '../widgets/buttonWidget.dart';
import '../widgets/imagewidget.dart';
import '../widgets/mytext.dart';

class SignUp extends StatelessWidget {
  // const SignUp({super.key});
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final auth = FirebaseAuth.instance;
  register() async {
    try {
      var res = await auth.createUserWithEmailAndPassword(
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
          ImageWidget(
            ImageAsset: 'images/sing.jpg',
            ImageHeight: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Container(
              width: double.infinity,
              height: 450,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyText(
                    MylableText: 'Sign Up',
                    FontSize: 35,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "Email ID",
                      prefixIcon: Icon(Icons.email_outlined),
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
                      prefixIcon: Icon(Icons.password_rounded),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: fullname,
                    decoration: InputDecoration(
                      hintText: "Fullname",
                      prefixIcon: Icon(Icons.person_add),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      register();
                      Navigator.pop(context);
                    },
                    child: Text("SignUp"),
                    // btnText: 'Sign Up',
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
