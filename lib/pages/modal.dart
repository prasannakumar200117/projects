import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Modal extends StatefulWidget {
  const Modal({super.key});

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final List<Map<String, dynamic>> choices = [
    {
      'name': 'Margarita',
      'sizes': [
        {'size': 'Small', 'price': 8.99},
        {'size': 'Medium', 'price': 12.99},
        {'size': 'Large', 'price': 15.99},
        {'size': 'Extra Large', 'price': 18.99},
      ]
    },
    {
      'name': 'Pepperoni',
      'sizes': [
        {'size': 'Small', 'price': 9.99},
        {'size': 'Medium', 'price': 13.99},
        {'size': 'Large', 'price': 16.99},
      ]
    },
    {
      'name': 'Veggie',
      'sizes': [
        {'size': 'Small', 'price': 7.99},
        {'size': 'Medium', 'price': 11.99},
        {'size': 'Large', 'price': 14.99},
      ]
    },
    {
      'name': 'Cheesy-Meaty',
      'sizes': [
        {'size': 'Small', 'price': 10.99},
        {'size': 'Medium', 'price': 14.99},
        {'size': 'Large', 'price': 18.99},
      ]
    },
    {
      'name': 'Double Cheese',
      'sizes': [
        {'size': 'Small', 'price': 8.49},
        {'size': 'Medium', 'price': 12.49},
        {'size': 'Large', 'price': 15.49},
        {'size': 'Extra large', 'price': 18.49},
      ]
    },
    {
      'name': 'Cheesiken',
      'sizes': [
        {'size': 'Small', 'price': 11.49},
        {'size': 'Medium', 'price': 15.49},
        {'size': 'Large', 'price': 18.49},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select your Choice'),
        ),
        body: ListView.builder(
          itemCount: choices.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(
              Icons.local_pizza_outlined,
              size: 30,
            ),
            title: Text(choices[index]['name']),
            trailing: Icon(Icons.add_circle_outline),
            onTap: () {
              callBottomSheet(
                  context, choices[index]['name'], choices[index]['sizes']);
            },
          ),
        ));
  }
}

void callBottomSheet(BuildContext context, String selectedPizza, List sizes) {
  showModalBottomSheet(
      context: context,
      builder: (context) {        
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[400]!, width: 2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Select size for $selectedPizza",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                        child: ListView.builder(
                            itemCount: sizes.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Icon(Icons.local_pizza, size: 30),
                                title: Text('size : ${sizes[index]['size']}'),
                                subtitle:
                                    Text('Price: \$${sizes[index]['price']}'),
                                trailing: ElevatedButton(
                                    onPressed: () {}, child: Text('Select')),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              );
                            }))
                  ],
                ),
              );
            
      });
}
