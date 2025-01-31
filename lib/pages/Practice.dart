import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text.rich(
          TextSpan(
            text: 'Hello',
            style: TextStyle(fontSize: 20),

            children: [
              TextSpan(
                text: 'hi',
                style: TextStyle(
                  fontSize : 20
                )
              )
            ]

          ),
          
          )
    );
  }
}