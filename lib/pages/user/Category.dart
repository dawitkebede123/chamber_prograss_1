import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer:const Drawer(
         backgroundColor: Colors.white,
       ),
      appBar: AppBar(
          leading: Row(children: [
            Text('here')
          ],),
      ),
    );
  }
}