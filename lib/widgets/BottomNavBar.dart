import 'package:chamber_of_commerce/pages/Home.dart';
import 'package:chamber_of_commerce/pages/user/Almanac.dart';
import 'package:chamber_of_commerce/pages/user/Business.dart';
import 'package:chamber_of_commerce/pages/user/Favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: BottomNavigationBar(
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
         
         
           child: Image(image: AssetImage('assets/images/home.png'),   
          ),
         ),
         label: 'Home',
       ),
       BottomNavigationBarItem(
        //  icon: Image(image: AssetImage('assets/images/discovery.png')),
         icon: TextButton(
          onPressed:  () { 
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
         
         
           child: Image(image: AssetImage('assets/images/discovery.png'),   
          ),
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
         
         
           child: Image(image: AssetImage('assets/images/business_small.png'),   
          ),
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
         
         
           child: Image(image: AssetImage('assets/images/almanac_small.png'),   
          ),
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
         
         
           child: Image(image: AssetImage('assets/images/favorite.png'),   
          ),
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
           )
    );  }
}