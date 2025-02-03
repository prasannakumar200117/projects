import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final List<String> items = [
    "Uber Auto",
    "Uber Mini",
    "Uber Sedan",
    "Uber SUV",
    "Uber Bike",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Your Ride")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.directions_car, size: 30),
            title: Text(items[index]),
            onTap: () {
              showBottomSheetUI(context, items[index]);
            },
          );
        },
      ),
    );
  }

  void showBottomSheetUI(BuildContext context, String selectedItem) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.2,
          maxChildSize: 0.8,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Suggested Fares for $selectedItem",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.local_taxi, size: 30),
                          title: Text("$selectedItem - Option $index"),
                          subtitle: Text("₹100 - ₹150"),
                          trailing: ElevatedButton(
                            onPressed: () {},
                            child: Text("Choose"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}