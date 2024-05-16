// import 'dart:js';

import 'package:chamber_of_commerce/pages/Home.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  // final String list;
  // const GridScreen({super.key, required this.list});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  final List<String> _items = [
    "Bank",
    "Card 2",
    "Card 3",
    "Card 4",
    "Card 5",
    "Card 6",
    "Card 8",
    "Card 9",
    "Card 10",
    "Card 11",
    "Card 12",
  ];
  // String _list = '';
  // String _changer(){
  //   setState((String arg) {
  //     _list = arg
  //   });
  // }
  Widget build(BuildContext context) {
    return  GridView.count(
        crossAxisCount: 3, // Three columns
        childAspectRatio: 1.5, // Aspect ratio for cards (adjust as needed)
        children: _items.map((String item) => _buildCard(item)).toList(),
      );
  }
}
 Widget _buildCard(String item) {
    return 
    
    Card(
      child: GestureDetector(
        onTap: (){
          // Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> const Home()));
          // print('card tapped');
        },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(item),
        ),
      ),
    ),
    );
  }