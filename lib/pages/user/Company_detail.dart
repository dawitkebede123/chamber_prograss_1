// import 'dart:js';

import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:chamber_of_commerce/widgets/VideoPlayer.dart';

class CompanyDetail extends StatefulWidget {
  final Map<dynamic, dynamic> data;
    const CompanyDetail({super.key, required this.data});
 
  @override
  State<CompanyDetail> createState() => CompanyState();
}

class CompanyState extends State<CompanyDetail> {
    

  @override
  Widget build(BuildContext context) {
    // final accountNumber = widget.data['Account Number'];
    final name = widget.data['Company Name'];
    final tel = widget.data['Tel'];
    final fax = widget.data['Fax'];
    final email = widget.data['E-mail'];
    final website = widget.data['Web'];
    // final sector = data['Sector'];
    // final subSector = data['Sub Sector'];
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
          Padding(padding: EdgeInsets.only(right: 20),
         child:  SvgPicture.asset('assets/images/chamber_icon.svg')
          ,),
         
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
      
      body: Padding(padding: EdgeInsets.all(10),
      child:  Container(
         decoration: BoxDecoration(
    
              color: const Color.fromARGB(255,229,234,232),

      borderRadius:BorderRadius.circular(20), // Set border width

  ),
        // color: const Color.fromARGB(255,229,234,232),
        //  width: MediaQuery.of(context).size.width * 0.8,
         height: 230,
        child:  Padding(padding: EdgeInsets.all(5),
        child: Column(children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          // Row(
          //   children: [
          //      SvgPicture.asset('assets/images/phone_icon.svg'),
          //     SizedBox(width: 10,),
          //     Text(tel),
          //   ],
          // ),
          SizedBox(height: 5,),
          Row(
            children: [
               SvgPicture.asset('assets/images/web_icon.svg'),
              SizedBox(width: 10,),
              Text(website),
            ],
          ),
           SizedBox(height: 5,),
          Row(
            children: [
               SvgPicture.asset('assets/images/fax_icon.svg'),
              SizedBox(width: 10,),
              Text(fax),
            ],
          ),
           SizedBox(height: 5,),
          Row(
            children: [
               SvgPicture.asset('assets/images/mail_icon.svg'),
               SizedBox(width: 10,),
              Text(email),
            ],
          )
          // const Column(
          //   children: [
              
          //   ],
          // )
        ],))
         
      )),
        
         bottomNavigationBar:const CustomeButtomNavBar(index: 3,),
  
        // BottomAppBar(),
    
      
     );
     
    return scaffold;
  }
}