import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Company.dart';
import 'package:chamber_of_commerce/pages/user/Company_detail.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlmanacListing extends StatelessWidget {
   final int index;
   final String title;
   AlmanacListing({super.key,required this.index,required this.title});

  
  @override
  Widget build(BuildContext context) {
     const _items = [
    "assets/images/almanac_lists/bank.svg",
     "assets/images/almanac_lists/Insurance.svg",
     "assets/images/almanac_lists/micro_finance.svg", 
     "assets/images/almanac_lists/fintech.svg",
      "assets/images/almanac_lists/telecom.svg",
      "assets/images/almanac_lists/capital_goods.svg",
      

   
   

  ];
  List <dynamic> bank = [
    {
   "logo":"assets/images/almanac_lists/awash.svg",
   index:1
  },
  {
"logo":"assets/images/almanac_lists/cbe",
index:2
  },
  {
 "logo":"assets/images/almanac_lists/dashen1.svg",
 index:3
  },
  {
"logo":"assets/images/almanac_lists/oromia.svg",
index:4
  },
  {
"logo":"assets/images/almanac_lists/wegagen.svg",
index:5
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:6
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:7
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:8
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:9
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:10
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:11
  },
 ];
 List <dynamic> Insurance = [
{
"logo":"assets/images/almanac_lists/awash.svg",
index:11
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:11
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:11
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:11
  },
  {
"logo":"assets/images/almanac_lists/awash.svg",
index:11
  },
 ];
 List <dynamic> micro_finance = [
{
"logo":"assets/images/almanac_lists/awash.svg",
index:11
},
{
"logo":"assets/images/almanac_lists/awash.svg",
index:11
},
 ];
 List <dynamic> fintech = [
{
"logo":"assets/images/almanac_lists/awash.svg",
index:11
},
{
"logo":"assets/images/almanac_lists/awash.svg",
index:11
}

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
              MaterialPageRoute(builder: (context) =>  Almanac()),
            ),
            }
          ),
      
        // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0), // Set border radius
    ),
       
        title:Text(
          title,
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
    
      body: Column(
        children: [
      //     Container(
      //        width: MediaQuery.of(context).size.width * 0.9,
      //       height: 126,
      //       decoration: BoxDecoration(
  
      //         color: const Color.fromARGB(255,229,234,232),

      // borderRadius:BorderRadius.circular(20),),
      //   child:SvgPicture.asset('assets/images/Adv_slider.svg'),
      //     ),
        SizedBox(height: 20,),
  //         Container(
  //           width: MediaQuery.of(context).size.width * 0.9,
  //           height: 146,
  //           decoration: BoxDecoration(
                  
  //             color: const Color.fromARGB(255,229,234,232),

  //     borderRadius:BorderRadius.circular(20), // Set border width

  // ),

  //         //about almanac
  //         child: Padding(padding:EdgeInsets.all(10),
  //          child:  ListView(children: const [
  //           // Row(children: [
  //             SizedBox(height: 20,),
  //              Text("About Almanac", style: TextStyle(fontWeight: FontWeight.bold),),
            
  //            Text("The Almanac category focuses specifically on businesses related to finance"),
  //           // ]
            
  //           // ),
  //         ],),)


        
  //         ),
          

           Expanded(
             child:  Padding(padding: EdgeInsets.only( left: 8,top: 5),
                     child:Container(
                       width: MediaQuery.of(context).size.width * 1,
                      //  child: ,
                      
            child:  Column(
              children: [
                Row(
                  children: [
                       GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Company()),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/awash1.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                                     GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Company()),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/Insurance.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                                     GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Company()),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/micro_finance.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                  ],
                ),
              
              ],
            )
            
            
            ))
         // Padding(padding: EdgeInsets.all(10),
         //child: GridScreen(items: _items),),
         //
         
         )
          


        ],
      ),
          bottomNavigationBar:const CustomeButtomNavBar(index: 3,),


    );
    return scaffold;
  }

//  Widget _buildCard(String item) {
//     return Container(
//       height: 126,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Text(item),
//         ),
//       ),
//     );
//   }
}