import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';




class SlidingUpPanelDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('Sliding Panel with Tabs')),
      body: Stack(
        children: [
          Center(child: Text("Main Content Here")), 
          SlidingUpPanel(
            panel: DefaultTabController(
              length: 3, 
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: "Home"),
                      Tab(icon: Icon(Icons.person), text: "Profile"),
                      Tab(icon: Icon(Icons.settings), text: "Settings"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          // padding: EdgeInsets.all(10),
                          child: BoxContainer(),

                        ),
                        Center(child: Text('Profile Content')),
                        Center(child: Text('Settings Content')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            minHeight: 400,  
            maxHeight: 800, 
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
        ],
      ),
    );
  }
}


class BoxContainer extends StatelessWidget {
  // final String text;

  const BoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey[400]!, width: 2),
      ),
      child: Text('abc', style: const TextStyle(color: Colors.white)),
    );
  }
}


