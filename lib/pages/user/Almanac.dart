import 'package:chamber_of_commerce/pages/user/AlmanacListing.dart';
import 'package:chamber_of_commerce/pages/user/Home.dart';
import 'package:chamber_of_commerce/pages/admin/adminHome.dart';
import 'package:chamber_of_commerce/widgets/BottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/CustomBottomNavBar.dart';
import 'package:chamber_of_commerce/widgets/GridScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Almanac extends StatelessWidget {
  final slideImages = [
      "assets/images/almanac_lists/adv/1.jpg",
      "assets/images/almanac_lists/adv/2.jpg",
      "assets/images/almanac_lists/adv/3.jpg",
       "assets/images/almanac_lists/adv/4.jpg",
        "assets/images/almanac_lists/adv/5.jpg",
         "assets/images/almanac_lists/adv/6.jpg",
          "assets/images/almanac_lists/adv/7.jpg",
           "assets/images/almanac_lists/adv/8.jpg",
            "assets/images/almanac_lists/adv/9.jpg",
             "assets/images/almanac_lists/adv/10.jpg",
              "assets/images/almanac_lists/adv/11.jpg",
             "assets/images/almanac_lists/adv/12.jpg",
              "assets/images/almanac_lists/adv/13.jpg",
               "assets/images/almanac_lists/adv/14.jpg",
                "assets/images/almanac_lists/adv/15.jpg",
                 "assets/images/almanac_lists/adv/16.jpg",
                  "assets/images/almanac_lists/adv/17.jpg",
                   "assets/images/almanac_lists/adv/18.jpg",
                    "assets/images/almanac_lists/adv/19.jpg",  
 "assets/images/almanac_lists/adv/20.jpg",
  ];



  // const Almanac({super.key});
   List <dynamic> AlmanacCategory = [
    {
      "image":"assets/images/finance.svg",
       "index":1,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":2,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":3,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":4,
       "title":""
    },
    {
       "image":"assets/images/finance.svg",
     "index":5,
       "title":""

    },{
       "image":"assets/images/finance.svg",
     "index":6,
            "title":""
    }];
  
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
    
      body: ListView(
        children: [
          Container(
             width: MediaQuery.of(context).size.width * 0.9,
            height: 126,
            decoration: BoxDecoration(
  
              color: const Color.fromARGB(255,229,234,232),

      borderRadius:BorderRadius.circular(20),),
      child:Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CarouselSlider.builder(itemCount: slideImages.length, itemBuilder:(context,index,realIndex){
            final urlImage = slideImages[index];
            return buildImage(urlImage,index);
           }, options: CarouselOptions(height: 100,autoPlay: true))

      ],)
        // child:SvgPicture.asset('assets/images/Adv_slider.svg'),
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
          

           Expanded(
             child:  Padding(padding: EdgeInsets.only( left: 8,top: 5),
                     child:Container(
                       width: MediaQuery.of(context).size.width * 1,
            child:  Column(
              children: [
                Row(
                  children: [
                       GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  AlmanacListing(index: 1,title: "Bank",)),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/bank.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                                     GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  AlmanacListing(index: 2,title: "Insurance",)),
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
                                       MaterialPageRoute(builder: (context) =>  AlmanacListing(index: 3,title: "Mircro Finance",)),
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
                 Row(
                  children: [
                       GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  AlmanacListing(index: 4,title:"Fintech")),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/fintech.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                                     GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  AlmanacListing(index: 5,title:"Telecom")),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/telecom.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                                     GestureDetector(
                                        
                                   onTap: (){
                                    Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  AlmanacListing(index: 6,title:"Capital Goods")),
                                     );},
                                 
                               // child: Column(children: [
                                 // SizedBox(height: 50,),
                               child:  Container(
                                child: Padding(padding: EdgeInsets.all(5),
                                   child: SvgPicture.asset("assets/images/almanac_lists/capital_goods.svg",width: MediaQuery.of(context).size.width * 0.28,),
                                )
                               ) 
                       
                               // ],)
                                    ,),
                  ],
                )
              ],
            )))
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
Widget buildImage(String urlImage,int index)=>
          Container(
                 margin: EdgeInsets.symmetric(horizontal:5),
                 child:Image.network(urlImage,fit: BoxFit.cover,),
          );
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