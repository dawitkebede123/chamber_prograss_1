import 'package:chamber_of_commerce/pages/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';

class Almanac extends StatelessWidget {
  const Almanac({super.key});

  @override
  Widget build(BuildContext context) {
     const _items = [
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
        backgroundColor:Colors.white,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed:()=>{
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ),
            }
          ),
      
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0), // Set border radius
    ),
       
        title:const Text(
          'Almanac',
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
    
      body: const GridScreen(items: _items),
      // ListView(
      //   children: [

      //     ////slider for almanac
      //     Container(
      //       ///place holder for slider 
      //       child: const Image(
      //       image:AssetImage('assets/images/Almanac_Adv.png')
      //               ),
      //     ),
      // //    GridView.count(
      // //   crossAxisCount: 3, // Three columns
      // //   childAspectRatio: 1.5, // Aspect ratio for cards (adjust as needed)
      // //   children: _items.map((String item) => _buildCard(item)).toList(),
      // // ),
       
     
      //   ],
         
         
      // ),
 

      // addis chamber contact bar
      

      bottomNavigationBar:const BottomNav(),


    );
    return scaffold;
  }

 Widget _buildCard(String item) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(item),
        ),
      ),
    );
  }
}