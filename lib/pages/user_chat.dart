import 'package:flutter/material.dart';
import 'package:projects/pages/home_page.dart';



class UserChat extends StatelessWidget {
  const UserChat({super.key});


  static const String id = 'userchat';


  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFFD9D9D9), 
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)), 
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
              SizedBox(height: 3,),
              Text("Online", style: TextStyle(color: Colors.grey, fontSize: 16)),
            ],
          ),
          centerTitle: true,
          actions: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://i.pinimg.com/550x/0c/d2/ce/0cd2ce58059ee1e3c0337458821dabf2.jpg'),
                  backgroundColor: Color(0xFFC8FFD5),
                ),
                 Positioned(
                  right: 0,
                  bottom: 35,
                  child: Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 25, 231, 32), 
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                  ),
                ),
               
              ],
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
      backgroundColor: Colors.black,

body: PersonalData(),
    
    );
    
  }
  


       

  

       
      
      
    
    
  }



Widget PersonalData () {
    return Stack(
        children: [
          
          Positioned(
            bottom: 20, 
            left: 20,
            right: 20,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type here",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      );
  }


