import 'package:flutter/material.dart';
import 'package:learningflutter1/main.dart';
import 'package:learningflutter1/profilepage.dart';
import 'functions.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<StatefulWidget> createState() => MyCartPage();
}

class MyCartPage extends State<MyCart> {
  int current = 1;

  void _onItemTapped(int index) {
    setState(() {
      current = index;
    });
    navigate(index, context);
  }

  bool isCartEmpty() {
    return itemQuantities.values.every((value) => value == 0);
  }

  int getTotalItems() {
    return itemQuantities.values.reduce((a, b) => a + b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            if (isCartEmpty())
              const Text("Your Cart is empty", style: TextStyle(fontSize: 18))
            else ...[
              Text(
                "Total Items in Cart: ${getTotalItems()}",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              if (itemQuantities['idly_count'] != 0)
                buildCartItem("IDLY", itemQuantities['idly_count']!),
              if (itemQuantities['chappathi_count'] != 0)
                buildCartItem("CHAPPATHI", itemQuantities['chappathi_count']!),
              if (itemQuantities['biriyani_count'] != 0)
                buildCartItem("BIRIYANI", itemQuantities['biriyani_count']!),
              if (itemQuantities['grill_count'] != 0)
                buildCartItem("GRILL", itemQuantities['grill_count']!),
              if (itemQuantities['fish_count'] != 0)
                buildCartItem("FISH", itemQuantities['fish_count']!),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Handle checkout logic here
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Order Placed"),
                      content: const Text("Thank you for ordering!"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Checkout", style: TextStyle(fontSize: 16)),
              ),
            ],
          ],
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

  Widget buildCartItem(String itemName, int count) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text('The $itemName COUNT is: $count'),
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
