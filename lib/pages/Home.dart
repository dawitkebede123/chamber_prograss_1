
import 'package:chamber_of_commerce/pages/user/Category.dart';
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
            child: const Image(
            image:AssetImage('assets/images/banner.png')
           // image:SvgPicture.asset('assets/images/chamber-logo.svg').image;
                    ),
          ),

        //search field
          Container(
            margin:const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255,229,234,232),
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(50),
                  borderSide: BorderSide.none
                  ),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'search',
                  suffixIcon: Container(
                   width: 200,
                   child: const IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Padding(
                        padding: EdgeInsets.all(8.0),
                       
                        child: Icon(Icons.search),
                        ),
                         Padding(
                        padding: EdgeInsets.all(8.0),
                       

                        child: SearchFieldMoreIcon(),
                       
                        ),
                        
                      ],
                    ),
                   ),
                   
                  )
              ),
            ),
          ),

          //two big buttons
       Container(
         
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center buttons horizontally
            children: [
             CenteredVerticalList(path:'assets/images/business.png', text1: "Business", text2: "All Businesses"),
             
              // buildButton(
              //   text: 'Business',
              //   description: "All Businesses",
              //    icon: Icons.info,
              //    targetPage:"BusinessPage",
                 
              //    ),
              SizedBox(width: 20.0), // Add spacing between buttons
              CenteredVerticalList(path:'assets/images/almanac.png', text1: "Almanac", text2: "Financial Business"),
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
 

      // addis chamber contact bar
      

     bottomNavigationBar: BottomNavigationBar(
     items: const <BottomNavigationBarItem>[
       BottomNavigationBarItem(
       backgroundColor: Color.fromARGB(255, 0, 114, 63),
        //you have to use svg
         icon: Image(image: AssetImage('assets/images/home.png'),   
         ),
         label: 'Home',
       ),
       BottomNavigationBarItem(
         icon: Image(image: AssetImage('assets/images/discovery.png')),
         label: 'Discovery',
       backgroundColor: Color.fromARGB(255, 10, 131, 53),
     
       ),
       BottomNavigationBarItem(
          icon: Image(image: AssetImage('assets/images/business_small.png')),
           
         label: 'Business',
      backgroundColor: Color.fromARGB(255, 10, 131, 53),
         
       ),
        BottomNavigationBarItem(
         icon: Image(image: AssetImage('assets/images/almanac_small.png')),
         label: 'Almanac',
      backgroundColor: Color.fromARGB(255, 10, 131, 53),
     
       ),
        BottomNavigationBarItem(
     
         icon: Image(image: AssetImage('assets/images/favorite.png')),
         label: 'Favorite',
          // backgroundColor: Color(0X00723F),
       backgroundColor: Color.fromARGB(255, 10, 131, 53),
       
       ),
     ],
     // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
     // 
    //  onTap: _onItemTapped,
           )

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