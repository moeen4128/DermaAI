// import 'package:flutter/material.dart';
// import 'package:heal_wiz_application/Screens/profile.dart';
// import 'homePage.dart';
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   List pages = [
//     const HomePage(),
//     const ProfileScreen(),
//   ];
//
//   int cIndex = 0;
//   void onTap(int index) {
//     setState(() {
//       cIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           onTap: onTap,
//           backgroundColor: Color(0xFF43A1D4),
//           currentIndex: cIndex,
//           selectedFontSize: 0,
//           unselectedFontSize: 0,
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.black.withOpacity(0.8),
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           elevation: 0,
//           items: const [
//             BottomNavigationBarItem(
//                 // backgroundColor: Colors.deepPurple,
//                 label: ("Home"),
//                 icon: Icon(Icons.home)),
//             BottomNavigationBarItem(
//                 // backgroundColor: Color(0xFF4B72F7),
//                 label: ("Profile"),
//                 icon: Icon(Icons.person_rounded)),
//           ],
//         ),
//         body: pages[cIndex]);
//   }
// }
