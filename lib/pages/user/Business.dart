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
  //  final data = snapshot.data!.snapshot.value as List<dynamic>;

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
    List<dynamic> data;
 StreamBuilder<DatabaseEvent>(
        stream: _userStream,
        builder: (context, snapshot) {
           data = snapshot.data!.snapshot.value as List<dynamic>;
           
          //  return null;
           return Container(
  
      // Set desired height or adjust with constraints
      height: 0, // Adjust height as needed
      // color:s Color.fromARGB(255, 142, 139, 139), // Optional background color
      // child: _buildContent(snapshot), // Call a separate function
    );
        },


      );
     
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
           StreamBuilder<DatabaseEvent>(
        stream: _userStream,
        builder: (context, snapshot) {

           final data = snapshot.data!.snapshot.value as List<dynamic>;
             final  sector1 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

  final  sector2 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('construction') ? [element] : [];
  }).toList();

    final  sector3 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

  final  sector4 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector5 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector6 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector7 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector8 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector9 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();


    final  sector10 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector11 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector12 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector13 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector14 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();

    final  sector15 = data.expand((element) {
    // ... filtering logic using entry.value as Map<String, dynamic>
    final sector = element['Sector']?.toString().toLowerCase() ?? '';
    return  sector.startsWith('agriculture') ? [element] : [];
  }).toList();
  print(sector15);
   List<Map<String,dynamic>> _items  = [
     { 
 'logo': "assets/images/business_lists/agriculture.svg",
 "data":sector1
     },
     { 
 'logo': "assets/images/business_lists/construction.svg",
 "data":sector2
     },
       { 
 'logo':      "assets/images/business_lists/community.svg",

 "data":sector3
     },
       { 
 'logo':      "assets/images/business_lists/electricity.svg",

 "data":sector4
     },
       { 
 'logo':     "assets/images/business_lists/export.svg",

 "data":sector5
     },
       { 
 'logo':      "assets/images/business_lists/finance_inter.svg",

 "data":sector6
     },
       { 
 'logo':      "assets/images/business_lists/hotel.svg",

 "data":sector7
     },
       { 
 'logo':      "assets/images/business_lists/import.svg",

 "data":sector8
     },
       { 
 'logo':      "assets/images/business_lists/wholesale.svg",

 "data":sector9
     },
       { 
 'logo':      "assets/images/business_lists/maintenance.svg",

 "data":sector10
     },
       { 
 'logo':      "assets/images/business_lists/manufacturing.svg",

 "data":sector11
     },
       { 
 'logo':     "assets/images/business_lists/mining.svg",

 "data":sector12
     },
       { 
 'logo':      "assets/images/business_lists/real_estate.svg",

 "data":sector13
     },
       { 
 'logo': "assets/images/business_lists/importer.svg",
 "data":sector14
     },
     
       { 
 'logo': "assets/images/business_lists/transport.svg",
 "data":sector15
     },
     

   

  ];
         return    Expanded( 
            // child:margin()
            
              child: GridScreenForBusiness(items: _items)
              );
      //    Container(
      //          height: 200.0, // Adjust height as needed
      // // color: Color.fromARGB(255, 142, 139, 139), // Optional background color
      //     child: _buildContent(snapshot),
      //       );

        }),
          // Expanded( 
          //   // child:margin()
            
          //     child: GridScreenForBusiness(items: _items,)
          //     )
            
         


        ],
      ),
          bottomNavigationBar:const CustomeButtomNavBar(index: 2,),


     
    );
    return scaffold;
  }
}