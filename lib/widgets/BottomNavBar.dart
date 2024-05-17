import 'package:chamber_of_commerce/pages/Home.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Discovery.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    //  Scaffold(
        //  bottomNavigationBar:
          BottomNavigationBar(
     items:  <BottomNavigationBarItem>[
       BottomNavigationBarItem(
       backgroundColor: Color.fromARGB(255, 0, 114, 63),
        //you have to use svg
         icon: TextButton(
          onPressed:  () { 
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
         
         
           child:SvgPicture.asset('assets/images/home.svg'),   
          
         ),
         label: 'Home',
       ),
       BottomNavigationBarItem(
        //  icon: Image(image: AssetImage('assets/images/discovery.png')),
         icon: TextButton(
          onPressed:  () { 
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Discovery()),
            );
          },
         
         
           child: SvgPicture.asset('assets/images/discovery.svg'),  
         ),
         label: 'Discovery',
       backgroundColor: Color.fromARGB(255, 10, 131, 53),
     
       ),
       BottomNavigationBarItem(
          // icon: Image(image: AssetImage('assets/images/business_small.png')),
           icon: TextButton(
          onPressed:  () { 
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Business()),
            );
          },
         
         
           child: SvgPicture.asset('assets/images/business_small.svg'),
         ),
           
         label: 'Business',
      backgroundColor: Color.fromARGB(255, 10, 131, 53),
         
       ),
        BottomNavigationBarItem(
        //  icon: Image(image: AssetImage('assets/images/almanac_small.png')),
         icon: TextButton(
          onPressed:  () { 
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Almanac()),
            );
          },
         
         
           child: SvgPicture.asset('assets/images/almanac_small.svg'),  
         ),
         label: 'Almanac',
      backgroundColor: Color.fromARGB(255, 10, 131, 53),
     
       ),
        BottomNavigationBarItem(
     
        //  icon: Image(image: AssetImage('assets/images/favorite.png')),
         icon: TextButton(
          onPressed:  () { 
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Favorite()),
            );
          },
         
         
           child: SvgPicture.asset('assets/images/favorite.svg'),
         ),
         label: 'Favorite',
          // backgroundColor: Color(0X00723F),
       backgroundColor: Color.fromARGB(255, 10, 131, 53),
       
       ),
     ],
     // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
     // 
    //  onTap: _onItemTapped,
           );
    // ); 
     }
}