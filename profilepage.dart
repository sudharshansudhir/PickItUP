import 'package:flutter/material.dart';
import 'package:learningflutter1/cartpage.dart';
import 'package:learningflutter1/main.dart';
// import 'package:learningflutter1/searchpage.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<StatefulWidget> createState() => MyProfilePage();
}

class MyProfilePage extends State<MyProfile> {
  int current = 2;

  void _onItemTapped(int index) {
    setState(() {
      current = index;
      navigate(index, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              // Profile Picture
              const CircleAvatar(
                radius: 60,
               backgroundImage: AssetImage("images/profile.jpeg"), // Add your image in assets
              ),
              const SizedBox(height: 15),

              // Name and Email
              const Text(
                "Hi,Spidey Bro",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "spiderman@fakeid.com",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              // Info Cards
              buildInfoCard(Icons.school, "College", "Sri Shakthi Institute of Engineering"),
              buildInfoCard(Icons.computer, "Department", "CSE - 2nd Year"),
              buildInfoCard(Icons.book, "Semester", "4th Semester"),
              buildInfoCard(Icons.phone, "Phone", "+91 98765 43210"),

              const SizedBox(height: 30),

              // Logout Button
              ElevatedButton.icon(
                onPressed: () {
                  // Handle logout logic
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Logout"),
                      content: const Text("Are you sure you want to logout?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // Add logout logic
                          },
                          child: const Text("Logout",style:TextStyle( color:Colors.black,)),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.logout,color: Colors.black,),
                label: const Text("Logout",style:TextStyle( color:Colors.black,)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: current,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "My Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String title, String data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.orangeAccent),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(fontSize: 14, color: Colors.grey)),
              Text(data,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }

  void navigate(int index, BuildContext context) {
    Widget page;
    if (index == 0) {
      page = const Home();
    } else if (index == 1) {
      page = const MyCart();
    } else {
      page = const MyProfile();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
