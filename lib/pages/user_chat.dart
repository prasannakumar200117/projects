import 'package:flutter/material.dart';

class UserChat extends StatefulWidget {
  const UserChat({super.key});

  @override
  State<UserChat> createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  final  _textController = TextEditingController();
  List<String> messages = [];

  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        messages.add(_textController.text);
      });
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
        
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
                Column(
                  children: [
                    Text("User Name", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                    Text("Online", style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
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
                          color: Color.fromARGB(255, 25, 231, 32),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: ChatMsg(text: messages[index]),
                );
              },
            ),
          ),

          
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: "Type here",
                        border: InputBorder.none,
                      ),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.black),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class ChatMsg extends StatelessWidget {
  final String text;

  const ChatMsg({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}