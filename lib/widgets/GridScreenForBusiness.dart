// import 'dart:js';



import 'package:chamber_of_commerce/pages/user/Business_listing.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Company_with_image.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class GridScreenForBusiness extends StatefulWidget {
 final List<String> items;
 //accept a  list to display in a grid
 const GridScreenForBusiness({super.key, required this.items});

  
  @override
  State<GridScreenForBusiness> createState() => _GridScreenForBusinessState();
}

class _GridScreenForBusinessState extends State<GridScreenForBusiness> {
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
        childAspectRatio: 1, // Aspect ratio for cards (adjust as needed)
        children:widget.items.map((String item) => _buildCard(item,context)).toList(),
      );
  }
}
 Widget _buildCard(String item, BuildContext context) {
    return   Container(
      //  width: 94,
      //  height: 250,
       child: GestureDetector(
            onTap: (){
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Business_listing()),
              );},
          
        // child: Column(children: [
          // SizedBox(height: 50,),
        child: Padding(padding: EdgeInsets.all(10),
            child: SvgPicture.asset(item),

        ) 

        // ],)
             ,)
    );
    // Container(
    //   // width: 94,
    //   //  height: 94,
    
    //  child: 
    // //  ListView(children: [
    
    //     Column(children: [  
    //      Container(
    //     // margin: EdgeInsets.all(10),
    //     // color: const Color.fromARGB(255, 255, 255, 255),
        
    //     child: GestureDetector(
    //       onTap: (){
    //          Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => const Company()),
    //           );
    //         // Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> const Home()));
    //         // print('card tapped');
    //       },
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //         child:  SvgPicture.asset(item),
          
       
    //       // Image(
    //           // image:AssetImage(item)
    //                   // ),
    //     ),
    //       //  const Text("sector")

    //        ),
    //        ),
    //    ]
    //    ),
    //   //  ],
    //   //  ),
    //  );
    //the sector name
    // );
  }