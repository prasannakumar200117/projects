import 'package:flutter/material.dart';
import 'package:projects/pages/home_page.dart';
import 'package:projects/pages/user_chat.dart';
// import 'package:projects/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      home: HomePage(),
      routes: {
        // HomePage.id : (context) => const HomePage(),
        // UserChat.id : (context) => const UserChat()

         'home' : (context) => const HomePage(),
        'userchat' : (context) => const UserChat()
      },
      initialRoute: '/',
    );
  }
}


