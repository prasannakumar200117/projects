import 'package:flutter/material.dart';
import 'package:projects/pages/home_page.dart';
import 'package:projects/pages/user_chat.dart';
// import 'package:projects/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      home: HomePage(),
      routes: {
        '/home' : (context) => const HomePage(),
        '/userchat' : (context) => const UserChat()
      },
      initialRoute: '/userchat',
    );
  }
}


