import 'package:chamber_of_commerce/pages/Home.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
   
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
          'Addis Chambers',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),
       //should be replace by botton
        actions: [
          SvgPicture.asset('assets/images/chamber_icon.svg' ),
         
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
      
      body: 
      // Container(
         Container(
            margin: const EdgeInsets.all(20.0),
            ///place holder for slider 
            child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
         ),
          
    
      
     );
     
    return scaffold;
  // );
  }
 
  // }
  
}