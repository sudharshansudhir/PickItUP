// import 'package:flutter/material.dart';
// import 'package:learningflutter1/main.dart';
// import 'package:learningflutter1/profilepage.dart';
// import 'package:learningflutter1/cartpage.dart';

// class MySearch extends StatefulWidget{
//   const MySearch({super.key});

//   @override
//   State<StatefulWidget> createState() => MySearchPage();
// }


// class MySearchPage extends State<MySearch>{

//   int current = 0;
//       final PageController _pageController = PageController();
//      final List<Widget> newPage = [Home(), MyCart(), MySearch(), MyProfile()];
//      void _onItemTapped(int index) {
//     setState(() {});
//     _pageController.jumpToPage(index); // Switch to the selected page
//   }
//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//   body: Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center, // This makes the text horizontally centered
//       children: [
//         TextField(
//           decoration: InputDecoration(
//             prefixIcon: Icon(Icons.search),
//             hintText: "Chappathi",
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             suffixIcon: Icon(Icons.restaurant_menu),
//           ),
//         ),
//         SizedBox(height: 70), // spacing between text field and text
//         Center(
//           child: Text(
//             "Search by Name of the Food",
//             style: TextStyle(fontSize: 16),
//           ),
//         ),
//       ],
//     ),
//   ),
//   bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed, // allows all icons to show
//         backgroundColor: Colors.black, // 90% black
//         selectedItemColor: Colors.orangeAccent, // active icon & label
//         unselectedItemColor: Colors.grey,
//         currentIndex: current,
//         onTap: (value) {
//           setState(() {
//             current = value;
//             newPage[current];
//             navigate(current, context);
//             _onItemTapped;
//           });
//         },

//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: "My Cart",
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
// );

//   }

//   Null navigate(int cur, BuildContext b) {
//   if (cur == 0) {
//     Navigator.push(b, MaterialPageRoute(builder: (context) => Home()));
//   } else if (cur == 1) {
//     Navigator.push(b, MaterialPageRoute(builder: (context) => MyCart()));
//   } else if (cur == 2) {
//     Navigator.push(b, MaterialPageRoute(builder: (context) => MySearch()));
//   } else if (cur == 3) {
//     Navigator.push(b, MaterialPageRoute(builder: (context) => MyProfile()));
//   }
// }
// }
