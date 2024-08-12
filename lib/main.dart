import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_app/presentation/firebase_login.dart';
import 'package:flutter_chat_app/presentation/login/login_screen.dart';
import 'package:flutter_chat_app/presentation/sign/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/sign',
      routes: {
        '/sign': (context) => SignUpScreen(),
      },
    );
  }
}
