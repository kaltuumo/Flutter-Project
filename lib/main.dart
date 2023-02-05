import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mylogin_191/Files/login.dart';
import 'package:flutter/material.dart';
import 'package:mylogin_191/Files/question_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
