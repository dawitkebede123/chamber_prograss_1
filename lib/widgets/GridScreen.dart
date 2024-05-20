// import 'dart:js';



import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class GridScreen extends StatefulWidget {
 final List<String> items;
 //accept a  list to display in a grid
 const GridScreen({super.key, required this.items});

  
  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
//  = const [
//    "assets/images/awash.jpg",
//     "assets/images/air.jpg",
//     "assets/images/dashen.jpg",
//     "assets/images/air.jpg",
//     "assets/images/dashen.jpg",
//     "assets/images/awash.jpg",
   
   

//   ];
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
        children:widget.items.map((String item) => _buildCard(item,context)).toList(),
      );
  }
}
 Widget _buildCard(String item, BuildContext context) {
    return 
    Container(
      width: 94,
      height: 94,
    
     child:  Card(
      margin: EdgeInsets.all(10),
      color: const Color.fromARGB(255, 255, 255, 255),
      
      child: GestureDetector(
        onTap: (){
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Company()),
            );
          // Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> const Home()));
          // print('card tapped');
        },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
           SvgPicture.asset(item),

        // Image(
            // image:AssetImage(item)
                    // ),
      ),
    ),
    ),
    );
  }