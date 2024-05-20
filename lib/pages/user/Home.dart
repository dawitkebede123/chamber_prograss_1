
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Category.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:chamber_of_commerce/pages/user/Notify.dart';
import 'package:chamber_of_commerce/widgets/AboutUs.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final AssetImage backgroundImage = AssetImage('assets/images/logo.jpg');
   
    var scaffold = Scaffold(
        drawer: Drawer(
        width: MediaQuery.of(context).size.width * 1,
         backgroundColor: Colors.white,
         child: About(),
      //     child: ListView(
      //      padding: EdgeInsets.zero, // Remove default padding
      //      children: [
      //     // Add any drawer header content here (optional)
      //        const TwoButtonWidget(), // Use the widget directly
      //   ],
      // ),
       ),
      
       





      appBar: AppBar(
        backgroundColor:const Color(0XD6D6D6),
        title:const Text(
          'Addis Chamber Directory',
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
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Notify()),
            );
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
          ///
       
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              ///place holder for slider 
              child: SvgPicture.asset('assets/images/chamber-logo.svg')
                    
            ),
          ),

        //search field
         SearchField(),
         const SizedBox(height: 10.0),
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
              SizedBox(width: 15.0), // Add spacing between buttons
              CenteredVerticalList(path:'assets/images/almanac_large.svg', text1: "Almanac", text2: "Financial Business"),
              // buildButton(text: 'Almanac',description: "Financial Business", icon: Icons.abc,targetPage:"AlmanacPage"),
              
            ],
          ),
        ),
          const SizedBox(height: 10.0),
            // )
      Container(
        height:170 ,
        child: const Image(
        image:AssetImage('assets/images/adv.png')
      )
      ),
     //place holder for advertisment
const SizedBox(height: 10.0),
      Padding(padding: EdgeInsets.only(
             left: MediaQuery.of(context).size.width * 0.05,
             right: MediaQuery.of(context).size.width * 0.05, // 10% of screen width
            //  top: MediaQuery.of(context).size.height * 0.1,
             bottom: MediaQuery.of(context).size.height * 0.1
        //       // 5% of screen height 
                 ),
        child:Container(
                height: 70,
                  decoration: BoxDecoration(
    // border: Border.all(
    //   color: Color.fromARGB(255,229,234,232), // Set border color
    //   width: 1.0,
    // ),
              color: const Color.fromARGB(255,229,234,232),

      borderRadius:BorderRadius.circular(20), // Set border width

  ),
  child: Padding(
    padding: EdgeInsets.all(10.0),
    child: Row(children: [
    
            // Text('ds'),      // child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
            SvgPicture.asset('assets/images/social_media_icons/logo.svg'),
            SizedBox(width: 40,),
             SvgPicture.asset('assets/images/social_media_icons/facebook.svg'),
            SizedBox(width: 10,),
            SvgPicture.asset('assets/images/social_media_icons/twitter.svg'),
            SizedBox(width: 10,),
             SvgPicture.asset('assets/images/social_media_icons/telegram.svg'),
            SizedBox(width: 10,),
            SvgPicture.asset('assets/images/social_media_icons/email.svg'),
            
             
             
        ],),
  )         
      )
        
          
        //  padding: EdgeInsets.only(
        //      left: MediaQuery.of(context).size.width * 0.05,
        //      right: MediaQuery.of(context).size.width * 0.05, // 10% of screen width
        //     //  top: MediaQuery.of(context).size.height * 0.1,
        //      bottom: MediaQuery.of(context).size.height * 0.1
        // //       // 5% of screen height 
        //          ),
             
              ///place holder for slider 
     
         ),
     
        ],
        
         
         
      ),
     
      // bottomNavigationBar: const BottomNav(index: 0,),
      bottomNavigationBar: const CustomeButtomNavBar(index: 0),
    
    );
    return scaffold;
  }
}


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