import 'package:chamber_of_commerce/pages/user/Business_listing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:chamber_of_commerce/widgets/GridScreenForBusiness.dart';
import 'package:chamber_of_commerce/widgets/GridSingle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class Business extends StatefulWidget {
  const Business({super.key});
  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {

   final _searchController = TextEditingController();
  String _searchTerm = '';
  Stream<DatabaseEvent>? _userStream;

  @override
  void initState() {
    super.initState();
    try {
    _userStream = FirebaseDatabase.instance.ref('Query7').onValue;
  } on FirebaseException catch (e) {
    print('Firebase error: ${e.code} - ${e.message}');
    // Handle the error appropriately, potentially display a user-friendly message
  }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchCompany(String searchTerm) {
    setState(() {
      _searchTerm = searchTerm.toLowerCase();
    });
  }
  @override
  
  Widget build(BuildContext context) {
    List <dynamic> _items = [
      {
        "logo":"assets/images/business_lists/agriculture.svg",
        "index":1,
      },
    
     {
        "logo":"assets/images/business_lists/contruction.svg",
        "index":2,
      },
       {
        "logo":"assets/images/business_lists/community.svg",
        "index":3,
      },
       {
        "logo":"assets/images/business_lists/electricity.svg",
        "index":4,
      },
       {
        "logo":"assets/images/business_lists/export.svg",
        "index":5,
      },
       {
        "logo":"assets/images/business_lists/finance_inter.svg",
        "index":6,
      },
       {
        "logo":"assets/images/business_lists/hotel.svg",
        "index":7,
      },
     {
        "logo":"assets/images/business_lists/import.svg",
        "index":8,
      },
     {
        "logo":"assets/images/business_lists/wholesale.svg",
        "index":9,
      },
     {
        "logo":"assets/images/business_lists/maintenance.svg",
        "index":5,
      },
     {
        "logo":"assets/images/business_lists/manufacturing.svg",
        "index":11,
      },
     {
        "logo":"assets/images/business_lists/mining.svg",
        "index":12,
      },
     {
        "logo":"assets/images/business_lists/transport.svg",
        "index":13,
      },
     {
        "logo":"assets/images/business_lists/real_estate.svg",
        "index":14,
      },
     {
        "logo":"assets/images/business_lists/transport.svg",
        "index":15,
      }
    
    
    
    
    
    

   

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





    //   appBar: AppBar(
      
    //     // Padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 5.0, bottom: 5.0),
    //     backgroundColor:Color.fromARGB(255, 255, 241, 209),
      
    //      leading: IconButton(
    //       icon: Icon(Icons.arrow_back),
    //       onPressed:()=>{
    //        Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => Home()),
    //         ),
    //         }
    //       ),
    //     // padding: const EdgeInsets.all(16.0), // Add padding on all sides
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(30.0), // Set border radius
    // ),
       
    //     title:const Text(
    //       'Business Directory',
    //       style: TextStyle(
    //        color: Colors.black,
    //        fontWeight: FontWeight.bold,
    //        fontSize: 18,
    //       ),
    //     ),
    //    //should be replace by botton
    //    actions: [
    //       Padding(padding: EdgeInsets.only(right: 20),
    //      child:  SvgPicture.asset('assets/images/chamber_icon.svg')
    //       ,),
         
    // ],
    //     elevation: 0.0,//remove shadow
    //     centerTitle: true,
    //   ),
      

     appBar:  PreferredSize(
      
    preferredSize: Size.fromHeight(70), // Set AppBar height
    child: Padding(
      padding: const EdgeInsets.only(top:30.0,bottom: 5,left:5,right: 5), // Adjust margin values
      child: AppBar(
         backgroundColor:Color.fromARGB(255, 255, 241, 209),
        title: const Text(
          'Business Directory',
          style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18,
          ),
        ),
         shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0), // Set border radius
           ),
             actions: [
        Padding(padding: EdgeInsets.only(right: 20),
         child:  SvgPicture.asset('assets/images/chamber_icon.svg')
          ,),
         
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
    ),
  ),
      body:  
      ListView(
        children: [
          // Slider(value: value, onChanged: onChanged),
          SvgPicture.asset('assets/images/Adv_slider.svg'),
           Expanded( 
            // child:margin()
            // ListView.builder(itemBuilder: itemBuilder)
            //   child: GridScreenForBusiness(items:_items)
            // child:  Padding(padding: EdgeInsets.only( left: 8,top: 5),
                     child:Container(
                      //  width: MediaQuery.of(context).size.width * 0.8,
                      // width:MediaQuery.of(context),

                       child: 
                       Column(
                                     children: [
                                        
                                      
                                   
                                     Row(
                                    
                                      children: [
                                       GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 1)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/business_lists/agriculture.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                                    
                             
                       GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 2)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Container(
                              child:  Padding(padding: EdgeInsets.all(5),
                                   child: 
                                   SvgPicture.asset("assets/images/business_lists/construction.svg",width: MediaQuery.of(context).size.width * 0.28,),
                               )
                               ) 
                       
                               // ],)
                                    ,),
                          GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 3)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                                   SvgPicture.asset("assets/images/business_lists/community.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                                   ],
                                   ),
                                   
                                     Row(children: [
                       
                                      SvgPicture.asset("assets/images/business_lists/electricity.svg",width: MediaQuery.of(context).size.width * 0.28,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 4)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                         SvgPicture.asset("assets/images/business_lists/export.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 5)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                          SvgPicture.asset("assets/images/business_lists/finance_inter.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                       
                                   ],),
                                   
                                     Row(children: [
                          GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 6)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                            SvgPicture.asset("assets/images/business_lists/hotel.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 7)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                          SvgPicture.asset("assets/images/business_lists/import.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 8)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                             SvgPicture.asset("assets/images/business_lists/wholesale.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                       
                                   ],),
                                    Row(children: [
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 9)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                        SvgPicture.asset("assets/images/business_lists/maintenance.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 5)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                           SvgPicture.asset("assets/images/business_lists/manufacturing.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 11)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                            SvgPicture.asset("assets/images/business_lists/mining.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                       
                                   ],),
                                   Row(children: [
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 12)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                             SvgPicture.asset("assets/images/business_lists/real_estate.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 13)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                           SvgPicture.asset("assets/images/business_lists/importer.svg",width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                         GestureDetector(
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  Business_listing(index: 14)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child: Padding(padding: EdgeInsets.all(5),
                                   child: 
                                          SvgPicture.asset("assets/images/business_lists/transport.svg", width: MediaQuery.of(context).size.width * 0.28,),
                       
                               ) 
                       
                               // ],)
                                    ,),
                       
                                   ],)
                               ]),
                     ),
                    //  )
            )
            ,]),
         
       
          bottomNavigationBar:const CustomeButtomNavBar(index: 2,),


     
    );
    return scaffold;
  }
}