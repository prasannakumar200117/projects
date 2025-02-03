import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserChat extends StatefulWidget {
  const UserChat({super.key});

  @override
  State<UserChat> createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  final TextEditingController _textController = TextEditingController();
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    loadMessages(); 
  }

  Future<void> loadMessages() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      messages = prefs.getStringList('messages') ?? [];
      print('messages: $messages'); 
      
    });
  }

  Future<void> saveMessages() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('messages', messages);
      print('messages1: $messages'); 
    
  }

  void _sendMessage() async {
    if (_textController.text.isNotEmpty) {
      setState(() {
        messages.add(_textController.text);
      });

      _textController.clear(); 
      await saveMessages(); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
        
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
                const Column(
                  children: [
                    Text("User Name", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                    Text("Online", style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
                Stack(
                  children: [
                    const CircleAvatar(
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
              ],
            ),
          ),

          
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        hintText: "Type here",
                        border: InputBorder.none,
                      ),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.black),
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
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}




