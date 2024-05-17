import 'package:chamber_of_commerce/pages/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
     final  _items = [
     "assets/images/awash.svg",
     "assets/images/air.svg",
     "assets/images/dashen.svg"
   

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 255, 241, 209),
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            ),
            }
          ),
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title:const Text(
          'Favorite',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),
       //should be replace by botton
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
      
      body:
       ListView(
        children: [
          Row(
           children: [
            SvgPicture.asset('assets/images/chamber_icon.svg'),
            Text("Awash"),
            // Icons.abc()
            // Image()
          //  enter icon here


            // Text()
            //company name here 
            // trash Icon
           ],
          ),
            
             GridScreen(items: _items),
        ],
      ),
        
 

      
    
      


    );
    return scaffold;
  }

 
}