// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG support

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0; // Track selected item index (optional, for programmatic selection)

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     // Add navigation logic here based on the selected index
//     // (e.g., Navigator.push for page navigation)
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           backgroundColor: Color.fromARGB(255, 0, 114, 63),
//           // ignore: deprecated_member_use
//           icon:  Icon(SvgPicture.asset('assets/images/home.svg',width: 40,height: 20,)), // Use SVG for icon
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(SvgPicture.asset('assets/images/discovery.svg')) ,
//           label: 'Discovery',
//           backgroundColor: Color.fromARGB(255, 10, 131, 53),
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/images/business_small.svg'),
//           label: 'Business',
//           backgroundColor: Color.fromARGB(255, 10, 131, 53),
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/images/almanac_small.svg'),
//           label: 'Almanac',
//           backgroundColor: Color.fromARGB(255, 10, 131, 53),
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset('assets/images/favorite.svg'),
//           label: 'Favorite',
//           backgroundColor: Color.fromARGB(255, 10, 131, 53),
//         ),
//       ],
//       currentIndex: _selectedIndex, // Set current index (optional)
//       selectedItemColor: Colors.amber[800],
//       onTap: _onItemTapped,
//     );
//   }
// }
