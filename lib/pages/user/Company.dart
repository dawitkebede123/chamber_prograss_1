// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';

class Company extends StatefulWidget {
  const Company({super.key});

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
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
          '',
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
      
      body: Column(
       children: [ 
         Padding(
        padding: 
              EdgeInsets.only(
             left: MediaQuery.of(context).size.width * 0.1,
             right: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
             top: MediaQuery.of(context).size.height * 0.05,
              // 5% of screen height 
                 ),
      // Container(
       child:  Row(
             children:[
             Container(
                height: 140,
         padding: EdgeInsets.only(
             left: MediaQuery.of(context).size.width * 0.01,
            //  right: MediaQuery.of(context).size.width * 0.1, // 10% of screen width
             top: MediaQuery.of(context).size.height * 0.05,
              // 5% of screen height 
                 ),
               decoration: BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255,229,234,232), // Set border color
      width: 1.0,
    ),
      borderRadius:BorderRadius.circular(20), // Set border width

  ),  
        child: Row(
          children: [
            const Column(children: [
              // text 
    Text('Awash International Bank',
             style: TextStyle(
             fontSize: 18, // Increase font size for heading-like appearance
             fontWeight: FontWeight.bold, // Make the text bold
  ),), 
      Padding(padding: EdgeInsets.only(left: 12.0,right: 12.0)),
       Text("Bank",
         style: TextStyle(
             fontSize: 9, // Increase font size for heading-like appearance
             fontWeight: FontWeight.bold, // Make the text bold
         ),)
            ],),
            Container(
              // width:  MediaQuery.of(context).size.width * 0.2,
              child: SvgPicture.asset('assets/images/company_icon/company_awash.svg',width: 10,height: 30,),
              // child: SvgPicture.asset('assets/images/air.svg'),

            )
            // SvgPicture()
          ],
          
          )
            ///place holder for slider 
            // child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
         ),
        ]),

        ),
        Container(
        child:Text("Almanac / Bank / Awash Bank ")

        ),

        Container(
          height: 200,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(20)),
       child:const Padding(padding: EdgeInsets.all(30),
       child:Center(
          child: VideoPlayerWidget(videoUrl: "assets/video/Awash.mp4",),
        ))
        ),
        
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/address_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Address "),
                       Text("Airport Road, Addis Ababa, Ethiopia")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/phone_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Phone "),
                       Text("0115 66 54 342")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/mail_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Email "),
                       Text("info@awash.com")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/phone_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Website "),
                       Text("awash.com")
                      
                    ]
                         
                   )
                   
                 ],
                ),
                 Row(
                 children: [
                  Padding(padding:const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: 
                  SvgPicture.asset('assets/images/time_icon.svg')
                  
                   ),
                   const Column(
                    children: [
                       Text("Open Time "),
                       Text("Mon - Sat       10:00 - 19:00")
                      
                    ]
                         
                   )
                   
                 ],
                ),
       ]), 
        
         bottomNavigationBar:const BottomNav(),
  
        // BottomAppBar(),
    
      
     );
     
    return scaffold;
  }
}