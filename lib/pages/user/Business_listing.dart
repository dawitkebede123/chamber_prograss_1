import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/GridSingle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Business_listing extends StatelessWidget {
  const Business_listing({super.key});

  @override
  Widget build(BuildContext context) {
     final  _items = [
     'assets/images/business_lists/sample/1.svg',
     'assets/images/business_lists/sample/2.svg',
     'assets/images/business_lists/sample/3.svg',
     'assets/images/business_lists/sample/4.svg',
     'assets/images/business_lists/sample/5.svg',
     'assets/images/business_lists/sample/6.svg',
    //  'assets/images/business_lists/sample/mengesha.svg',
    //  'assets/images/business_lists/sample/tomoca.svg',


   

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





      appBar: AppBar(
        // Padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 10.0, bottom: 5.0),
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
          'Business_listing Directory',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),
       //should be replace by botton
       actions: [
          Padding(padding: EdgeInsets.only(right: 20),
         child:  SvgPicture.asset('assets/images/chamber_icon.svg')
          ,),
         
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
      
      body:  
      Column(
        children: [
          // Slider(value: value, onChanged: onChanged),
          Expanded( 
            // child:margin()
              child: GridScreen(items: _items)
              ),
              SvgPicture.asset('assets/images/business_lists/sample/mengesha.svg'),
              SvgPicture.asset('assets/images/business_lists/sample/tomoca.svg'),
            
         


        ],
      ),
          bottomNavigationBar:const CustomeButtomNavBar(index: 2,),


     
    );
    return scaffold;
  }

 
}