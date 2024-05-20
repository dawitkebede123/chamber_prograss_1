import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Almanac extends StatelessWidget {
  // const Almanac({super.key});
   List <Map<String,dynamic>> AlmanacCategory = [
    {
      "image":"assets/images/finance.svg",
     "category_name":"Bank",
    },
    {
       "image":"assets/images/finance.svg",
     "category_name":"Bank",
    },
    {
       "image":"assets/images/finance.svg",
     "category_name":"Bank",
    },
    {
       "image":"assets/images/finance.svg",
     "category_name":"Bank",
    },
    {
       "image":"assets/images/finance.svg",
     "category_name":"Bank",
    },{
       "image":"assets/images/finance.svg",
     "category_name":"Bank",
    }
  ];
  @override
  Widget build(BuildContext context) {
     const _items = [
   "assets/images/finance.svg",
     "assets/images/capital_goods.svg",
     "assets/images/finance.svg",
     "assets/images/trade.svg",
     "assets/images/agriculture.svg",
     "assets/images/capital_goods.svg",

   
   

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
      borderRadius: BorderRadius.circular(50.0), // Set border radius
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
          Padding(padding: EdgeInsets.only(right: 20),
         child:  SvgPicture.asset('assets/images/chamber_icon.svg')
          ,),
         
    ],
        elevation: 0.0,//remove shadow
        centerTitle: true,
      ),
    
      body: Column(
        children: [
          Container(
             width: MediaQuery.of(context).size.width * 0.9,
            height: 126,
            decoration: BoxDecoration(
  
              color: const Color.fromARGB(255,229,234,232),

      borderRadius:BorderRadius.circular(20),),
        child:SvgPicture.asset('assets/images/Adv_slider.svg'),
          ),
        SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 146,
            decoration: BoxDecoration(
                  
              color: const Color.fromARGB(255,229,234,232),

      borderRadius:BorderRadius.circular(20), // Set border width

  ),

          //about almanac
          child: Padding(padding:EdgeInsets.all(10),
           child:  ListView(children: const [
            // Row(children: [
              SizedBox(height: 20,),
               Text("About Almanac", style: TextStyle(fontWeight: FontWeight.bold),),
            
             Text("The Almanac category focuses specifically on businesses related to finance"),
            // ]
            
            // ),
          ],),)


        
          ),
          

          const Expanded(child:  
          Padding(padding: EdgeInsets.all(10),
         child: GridScreen(items: _items),),)
          


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