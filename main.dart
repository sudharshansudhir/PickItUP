import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'profilepage.dart';
import 'mainpage.dart';
import 'topratings.dart';
import 'highlyrecommendpage.dart';
import 'hotpickspage.dart';
import 'fastservicepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PickIt-Up',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return Homepage();
  }
}

class Homepage extends State<Home> {
  int butclr = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();
  int current = 0;
  final List<Widget> newPage = [Home(), MyCart(), MyProfile()];

  void _onItemTapped(int index) {
    setState(() {});
    _pageController.jumpToPage(index); // Switch to the selected page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
  backgroundColor: Colors.black,
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(color: Colors.orange),
        child: Text(
          'PickIt-UP',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      ListTile(
        title: Text('Home', style: TextStyle(color: Colors.white)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()), // Class from another file
          );
        },
      ),
      ListTile(
        title: Text('My Cart', style: TextStyle(color: Colors.white)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCart()),
          );
        },
      ),
      
      ListTile(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyProfile()),
          );
        },
      ),
    ],
  ),
),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Biryani",
                        suffixIcon: Icon(Icons.food_bank),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _scaffoldKey.currentState?.openEndDrawer();
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orangeAccent,
                      ),
                      child: Icon(Icons.view_headline_outlined),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          butclr = 0;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: butclr == 0 ? Colors.orange : Colors.white,
                        ),
                        child: Icon(Icons.restaurant_menu),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          butclr = 1;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: butclr == 1 ? Colors.orange : Colors.white,
                        ),
                        child: Icon(Icons.add_chart_sharp),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          butclr = 2;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: butclr == 2 ? Colors.orange : Colors.white,
                        ),
                        child: Icon(Icons.airline_stops_sharp),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          butclr = 3;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: butclr == 3 ? Colors.orange : Colors.white,
                        ),
                        child: Icon(Icons.star_half_outlined),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          butclr = 4;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: butclr == 4 ? Colors.orange : Colors.white,
                        ),
                        child: Icon(Icons.stacked_line_chart_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              if (butclr == 0)
                Column(
                  children: [
                    Ourmenu(),
                    Divider(),
                    Hotpicks(),
                    Divider(),
                    Topratings(),
                    Divider(),
                    Highlyrecommended(),
                    Divider(),
                    Fastservice(),
                  ],
                )
              else if (butclr == 1)
                Column(
                  children: [
                    Hotpicks(),
                    Divider(),
                    Fastservice(),
                    Divider(),
                    Topratings(),
                    Divider(),
                    Ourmenu(),
                    Divider(),
                    Highlyrecommended(),
                  ],
                )
              else if (butclr == 2)
                Column(
                  children: [
                    Highlyrecommended(),
                    Divider(),
                    Topratings(),
                    Divider(),
                    Fastservice(),
                    Divider(),
                    Hotpicks(),
                    Divider(),
                    Ourmenu(),
                  ],
                )
              else if (butclr == 3)
                Column(
                  children: [
                    Topratings(),
                    Divider(),
                    Highlyrecommended(),
                    Divider(),
                    Ourmenu(),
                    Divider(),
                    Hotpicks(),
                    Divider(),
                    Fastservice(),
                  ],
                )
              else if (butclr == 4)
                Column(
                  children: [
                    Fastservice(),
                    Divider(),
                    Topratings(),
                    Divider(),
                    Highlyrecommended(),
                    Divider(),
                    Ourmenu(),
                    Divider(),
                    Hotpicks(),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // allows all icons to show
        backgroundColor: Colors.black, // 90% black
        selectedItemColor: Colors.orangeAccent, // active icon & label
        unselectedItemColor: Colors.grey,
        currentIndex: current,
        onTap: (value) {
          setState(() {
            current = value;
            newPage[current];
            navigate(current, context);
            _onItemTapped;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "My Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCart()),
    );
        },        
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_cart_checkout_sharp,color: Colors.orange,),
    ));
  }
}

Null navigate(int cur, BuildContext b) {
  if (cur == 0) {
    Navigator.push(b, MaterialPageRoute(builder: (context) => Home()));
  } else if (cur == 1) {
    Navigator.push(b, MaterialPageRoute(builder: (context) => MyCart()));
  } else if (cur == 2) {
    Navigator.push(b, MaterialPageRoute(builder: (context) => MyProfile()));
  }
}