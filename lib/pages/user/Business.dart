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
     final  _items = [
     "assets/images/business_lists/agriculture.svg",
     "assets/images/business_lists/construction.svg",
     "assets/images/business_lists/community.svg",
     "assets/images/business_lists/electricity.svg",
     "assets/images/business_lists/export.svg",
     "assets/images/business_lists/finance_inter.svg",
     "assets/images/business_lists/hotel.svg",
     "assets/images/business_lists/import.svg",
     "assets/images/business_lists/wholesale.svg",
     "assets/images/business_lists/maintenance.svg",
     "assets/images/business_lists/manufacturing.svg",
     "assets/images/business_lists/mining.svg",
     "assets/images/business_lists/real_estate.svg",
     "assets/images/business_lists/importer.svg",
     "assets/images/business_lists/transport.svg",

   

  ];
     var scaffold = Scaffold(
      //  drawer:const BackButton(
      //   //  backgroundColor: Colors.white,
      //  ),
      
       





    //   appBar: AppBar(
      
    //     // Padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 10.0, bottom: 5.0),
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
      
    preferredSize: Size.fromHeight(100), // Set AppBar height
    child: Padding(
      padding: const EdgeInsets.only(top:30.0,bottom: 10,left:10,right: 10), // Adjust margin values
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
      Column(
        children: [
          // Slider(value: value, onChanged: onChanged),
          SvgPicture.asset('assets/images/Adv_slider.svg'),
          Expanded( 
            // child:margin()
              child: GridScreenForBusiness(items: _items)
              )
            
         


        ],
      ),
          bottomNavigationBar:const CustomeButtomNavBar(index: 2,),


     
    );
    return scaffold;
  }
}