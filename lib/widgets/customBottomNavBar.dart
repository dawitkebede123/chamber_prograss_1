// class CustomBottomNavigationBar extends StatelessWidget {
//   final List<BottomNavigationBarItem> items;
//   final int currentIndex;
//   final Function(int) onTap;

//   const CustomBottomNavigationBar({
//     Key? key,
//     required this.items,
//     required this.currentIndex,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[200], // Background color
//       height: 60.0,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: items.asMap().entries.map((entry) {
//           int index = entry.key;
//           BottomNavigationBarItem item = entry.value;

//           return InkWell(
//             onTap: () => onTap(index),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Icon
//                   SvgPicture.asset(
//                     item.icon! is Widget ? (item.icon as SvgPicture).asset : "", // Handle SvgPicture or other Widget type for icon
//                     color: currentIndex == index ? Colors.amber[800] : Colors.grey,
//                   ),
//                   if (item.label != null) // Only show label if it exists
//                     Text(
//                       item.label!,
//                       style: TextStyle(
//                         color: currentIndex == index ? Colors.amber[800] : Colors.grey,
//                         fontSize: 12.0,
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
