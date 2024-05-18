import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/GridSingle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
     final  _items = [
      "assets/images/agriculture.svg",
     "assets/images/capital_goods.svg",
     "assets/images/finance.svg",
     "assets/images/trade.svg"

   

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
          'Business Directory',
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
      
      body: Column(
        children: [
          SvgPicture.asset('assets/images/adv_medroc.svg'),
          Expanded(child:  GridScreen(items: _items),)
         


        ],
      ),
          bottomNavigationBar:const BottomNav(),


     
    );
    return scaffold;
  }

 
}