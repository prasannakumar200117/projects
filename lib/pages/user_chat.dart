import 'package:flutter/material.dart';



class UserChat extends StatelessWidget {
  const UserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User chat', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/home');
          }, icon: Icon(Icons.arrow_back))
        ],
        
          
        ),

       

        
      
      );
    
  }
}