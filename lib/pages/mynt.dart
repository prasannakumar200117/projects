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
            minHeight: 900,
            maxHeight: 800,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
           panel: Container(
  color: Colors.white,
  child: SingleChildScrollView(  // Enable scrolling
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tabs with white background
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white, // White background
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tabButton(Icons.explore, "Explore"),
                tabButton(Icons.bookmark_border, "Watchlist"),
                tabButton(Icons.shopping_bag_outlined, "Orders"),
              ],
            ),
          ),

          SizedBox(height: 16), 

          // Best mutual funds section
          buildSlidingPanelContent(),

          SizedBox(height: 16),

          // All Categories Section
          Text(
            "All Categories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          // Equity Card
          buildCategoryCard(
            icon: Icons.trending_up, 
            title: "Equity",
            description: "Invest primarily in stocks. High risk, high return potential.",
            chips: ["Large Cap", "Mid Cap", "Flexi Cap", "ELSS"],
          ),

          SizedBox(height: 12),

          // Fixed Income Card
          buildCategoryCard(
            icon: Icons.attach_money, // Replace with your actual icon
            title: "Fixed Income",
            description: "Invest in bonds and fixed-income securities. Lower risk, stable returns.",
            chips: ["Liquid", "Short Duration", "Gilt Fund"],
          ),

          SizedBox(height: 20), 
        ],
      ),
    ),
  ),
),


          ),
        ],
      ),
    );
    
    
  }
}


Widget tabButton(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.black ,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white,),
          SizedBox(width: 6),
           Text(
            title,
            style: TextStyle(
              color:  Colors.white ,
              fontWeight: FontWeight.bold,
            ),
      )],
      )
    );
  }


  Widget buildSlidingPanelContent() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    color: Colors.blue[100],
    
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best mutual funds",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "View all",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          "Find the right mutual fund across these asset classes",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            fundCard(Icons.savings, "Save taxes", "Build wealth and save taxes", "46 funds", "4 recommended"),
            fundCard(Icons.timeline, "Equity + Debt", "Stable income and growth", "90 funds", "2 recommended"),
            fundCard(Icons.auto_graph, "Smart beta", "Hybrid of active and passive", "56 funds", "2 recommended"),
            fundCard(Icons.public, "International fun..", "Diversify your portfolio globally", "120 funds", "6 recommended"),
          ],
        ),
      ],
    ),
  );
}

Widget fundCard(IconData icon, String title, String subtitle, String funds, String recommended) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        SizedBox(height: 8),
        Text(
          funds,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          recommended,
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}


Widget buildCategoryCard({required IconData icon, required String title, required String description, required List<String> chips}) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 4, spreadRadius: 1),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.green, size: 24), // Icon for category
            SizedBox(width: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
        SizedBox(height: 4),
        Text(description, style: TextStyle(color: Colors.grey.shade600, fontSize: 14)),
        SizedBox(
  height: 40, // Adjust height as needed
  child: ListView.builder(
    scrollDirection: Axis.horizontal, 
    itemCount: chips.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0), 
        
        child: Chip(
          label: Text(chips[index]),
        ),
      );
    },
  ),
),

      ],
    ),
  );
}