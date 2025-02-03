import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
// import './../Images/myntlogo.png';

class MutualFund extends StatefulWidget {
  
  const MutualFund({super.key});

  // final PanelController _panelController = PanelController();


  @override
  State<MutualFund> createState() => _MutualFundState();
}

class _MutualFundState extends State<MutualFund>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

 

  @override
  Widget build(BuildContext context) {  


    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/Images/myntlogo.png"), 
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search mutual funds",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black54),
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mutual funds",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                SizedBox(height: 8),
                Text(
                  "₹1.46L",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "1D Change",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "₹571.04",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "-6.98%",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Invested", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        Text("₹1.32L", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Return", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        Text("₹13.20K", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Return %", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        Text("-12.56%", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.blue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.whatshot, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "View portfolio break up",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SlidingUpPanel(
            minHeight: 200,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            panel: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best mutual funds", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("Find the right mutual fund across these asset classes"),
                  SizedBox(height: 16),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: List.generate(4, (index) {
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
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