import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:flutter/material.dart';

class CenteredVerticalList extends StatelessWidget {
  final String path;
  final String text1;
  final String text2;
  final double iconSize;
  final TextStyle text1Style;
  final TextStyle text2Style;

  const CenteredVerticalList({
    Key? key,
    required this.path,
    required this.text1,
    required this.text2,
    this.iconSize = 24.0,
    this.text1Style = const TextStyle(fontSize: 16.0, color: Colors.white),
    this.text2Style = const TextStyle(fontSize: 12.0, color: Colors.white),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 150,
        height: 140,
        color: Color.fromARGB(255, 0, 114, 63), // Example color, adjust as needed
        // Add decoration if needed
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10.0), // Adjust corner radius as needed
        // ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(path)),
            const SizedBox(height: 8.0), // Add spacing
            Text(text1, style: text1Style),
            const SizedBox(height: 4.0), // Add spacing
            Text(text2, style: text2Style),
          ],
        ),
      ),
  
      onTap: (){
        if(text1=='Business'){
  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Business()),
            );
        }
        else{
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Almanac()),
            );
        }
       
      },
    );
  }
}
