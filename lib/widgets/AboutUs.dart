import 'package:chamber_of_commerce/pages/user/Home.dart';
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
          'Addis Chamber',
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
        Column(
             children:[
              Container(
            margin: const EdgeInsets.all(20.0),
            ///place holder for slider 
            child: SvgPicture.asset('assets/images/chamber_logo_about_page.svg')
         ),
         Padding(padding: const EdgeInsets.all(20.0),
        child:Column(
          children: [
                Text("Established in 1947, AACCSA is a voluntary, non-governmental, business membership organization with more than 17,000 member companies. The chamber serves as a credible voice of business and advocates for the creation of a conducive business environment. It also promotes trade and industry, disseminating business information, consulting government and members on economic development and business issues, establishing friendly relationship with similar chambers in other countries, and exchanging information as well as engaging in arbitration in times of disputes among businesses."),
                Row(
                 children: [
                  Padding(padding:const EdgeInsets.all(12.0),
                  child: 
                  SvgPicture.asset('assets/images/phone_icon.svg')
                  
                   ),
                   Column(
                    children: [
                       Text("Phone "),
                       Text("+251 115 518 055")

                    ]
                         
                   )
                   
                 ],
                ),
          ],
        ) 
        ),
        ])
         
         
          
    
      
     );
     
    return scaffold;
  // );
  }
 
  // }
  
}