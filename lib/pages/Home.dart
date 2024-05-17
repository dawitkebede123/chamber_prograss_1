
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Category.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/SearchField.dart';
import 'package:chamber_of_commerce/widgets/SearchMoreIcon.dart';
import 'package:chamber_of_commerce/widgets/drawer.dart';
import 'package:chamber_of_commerce/widgets/verticalAlign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

// void main() {
//   runApp(const MyApp());
// }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final AssetImage backgroundImage = AssetImage('assets/images/logo.jpg');
   
    var scaffold = Scaffold(
        drawer: Drawer(
         backgroundColor: Colors.white,
          child: ListView(
           padding: EdgeInsets.zero, // Remove default padding
           children: [
          // Add any drawer header content here (optional)
             const TwoButtonWidget(), // Use the widget directly
        ],
      ),
       ),
      
       





      appBar: AppBar(
        backgroundColor:const Color(0XD6D6D6),
        title:const Text(
          'Addis Chambers Directory',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),

        actions: [
          IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {
          // Handle notification tap
        },
      ),
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
    
      body:ListView(
        children: [

          ////slider
          Container(
            ///place holder for slider 
            child: SvgPicture.asset('assets/images/chamber-logo.svg')
                  
          ),

        //search field
         SearchField(),

          //two big buttons
       Container(
         
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center buttons horizontally
            children: [
             CenteredVerticalList(path:'assets/images/business_large.svg', text1: "Business", text2: "All Businesses"),
             
              // buildButton(
              //   text: 'Business',
              //   description: "All Businesses",
              //    icon: Icons.info,
              //    targetPage:"BusinessPage",
                 
              //    ),
              SizedBox(width: 20.0), // Add spacing between buttons
              CenteredVerticalList(path:'assets/images/almanac_large.svg', text1: "Almanac", text2: "Financial Business"),
              // buildButton(text: 'Almanac',description: "Financial Business", icon: Icons.abc,targetPage:"AlmanacPage"),
              
            ],
          ),
        ),


     //place holder for advertisment
const SizedBox(width: 20.0),
      Container(
        child: const Image(
        image:AssetImage('assets/images/adv.png')
      )
      )
     
        ],
         
         
      ),
     
      bottomNavigationBar: BottomNav(),
      
    
    );
    return scaffold;
  }
}


// ///the two big buttons builder widget
//  Widget buildButton({required String text,required String description, required IconData icon,required String targetPage}) {
//     return ElevatedButton.icon(
//       onPressed: () {
//       // Navigate to the target page
//       Navigator.push(
//         context as BuildContext,
//         MaterialPageRoute(builder: (context) => targetPageWidget(targetPage)), // Use a function to build the target page
//       );
//     },
//       icon: Column( 
//        mainAxisSize: MainAxisSize.min, // Content fits within button height
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [  Icon(icon, size: 30.0, color: Colors.white)]
//         ),
//       // icon: Icon(icon, size: 30.0, color: Colors.white),
//       label: Column( // Use a Column widget for vertical alignment
//       mainAxisSize: MainAxisSize.min, // Content fits within button height
//       crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
//       children: [
//         Text(text, style: TextStyle(fontSize: 18.0, color: Colors.white)),
//         const SizedBox(height: 8.0), // Add some spacing between text lines
//         Text(description, style: TextStyle(fontSize: 14.0, color: Colors.grey)),
//       ],
//     ),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color.fromARGB(0, 63, 255, 146),
//         minimumSize: Size(180.0, 150.0), // Set button size
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0), // Add rounded corners
//         ),
//       ),
//     );
//   }


  Widget targetPageWidget(String targetPage) {
  switch (targetPage) {
    case 'BusinessPage':
      return const Category(); // Replace with your actual page widget
    case 'AlmanacPage':
      return const Category(); // Replace with your actual page widget
    default:
      return const Text('Invalid Page'); // Handle invalid page names
  }
}