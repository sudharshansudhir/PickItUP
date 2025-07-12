
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'functions.dart';

String biriyani = "biriyani";
String idly = "idly";
String chappathi = "chappathi";
String grill = "Grillchicken";
String fish = "fish";




class Hotpicks extends StatefulWidget {
  const Hotpicks({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Hotpickspage();
  }
}

class Hotpickspage extends State<Hotpicks> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("Hot Picks", style: TextStyle(fontSize: 23,color:Colors.black))],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
  children: [
    Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "images/chappathi.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ),
    ElevatedButton(
      onPressed: () {
        setState(() {
          itemQuantities['chappathi_count'] = itemQuantities['chappathi_count']! + 1;

        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      child: Row(
        children: [
          if (itemQuantities['chappathi_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['chappathi_count'] =
                      (itemQuantities['chappathi_count']! > 0)
                          ? itemQuantities['chappathi_count']! - 1
                          : 0;
                });
              },
              icon: Icon(Icons.remove),
            ),
          if (itemQuantities['chappathi_count']! > 0)
            Text('${itemQuantities['chappathi_count']}'),
          if (itemQuantities['chappathi_count'] == 0)
            Text("chappathi", style: TextStyle(fontSize: 12, color: Colors.black)),
          if (itemQuantities['chappathi_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['chappathi_count'] =
                      (itemQuantities['chappathi_count']! < 100)
                          ? itemQuantities['chappathi_count']! + 1
                          : 0;
                });
              },
              icon: Icon(Icons.add),
            ),
        ],
      ),
    ),
  ],
),

              Column(
  children: [
    Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "images/idly.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ),
    ElevatedButton(
      onPressed: () {
        setState(() {
          itemQuantities['idly_count'] = itemQuantities['idly_count']! + 1;

        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      child: Row(
        children: [
          if (itemQuantities['idly_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['idly_count'] =
                      (itemQuantities['idly_count']! > 0)
                          ? itemQuantities['idly_count']! - 1
                          : 0;
                });
              },
              icon: Icon(Icons.remove),
            ),
          if (itemQuantities['idly_count']! > 0)
            Text('${itemQuantities['idly_count']}'),
          if (itemQuantities['idly_count'] == 0)
            Text("idly", style: TextStyle(fontSize: 12, color: Colors.black)),
          if (itemQuantities['idly_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['idly_count'] =
                      (itemQuantities['idly_count']! < 100)
                          ? itemQuantities['idly_count']! + 1
                          : 0;
                });
              },
              icon: Icon(Icons.add),
            ),
        ],
      ),
    ),
  ],
),
              Column(
  children: [
    Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "images/fish.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ),
    ElevatedButton(
      onPressed: () {
        setState(() {
          itemQuantities['fish_count'] = itemQuantities['fish_count']! + 1;

        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      child: Row(
        children: [
          if (itemQuantities['fish_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['fish_count'] =
                      (itemQuantities['fish_count']! > 0)
                          ? itemQuantities['fish_count']! - 1
                          : 0;
                });
              },
              icon: Icon(Icons.remove),
            ),
          if (itemQuantities['fish_count']! > 0)
            Text('${itemQuantities['fish_count']}'),
          if (itemQuantities['fish_count'] == 0)
            Text("fish", style: TextStyle(fontSize: 12, color: Colors.black)),
          if (itemQuantities['fish_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['fish_count'] =
                      (itemQuantities['fish_count']! < 100)
                          ? itemQuantities['fish_count']! + 1
                          : 0;
                });
              },
              icon: Icon(Icons.add),
            ),
        ],
      ),
    ),
  ],
),
              Column(
  children: [
    Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "images/grill.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ),
    ElevatedButton(
      onPressed: () {
        setState(() {
          itemQuantities['grill_count'] = itemQuantities['grill_count']! + 1;

        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      child: Row(
        children: [
          if (itemQuantities['grill_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['grill_count'] =
                      (itemQuantities['grill_count']! > 0)
                          ? itemQuantities['grill_count']! - 1
                          : 0;
                });
              },
              icon: Icon(Icons.remove),
            ),
          if (itemQuantities['grill_count']! > 0)
            Text('${itemQuantities['grill_count']}'),
          if (itemQuantities['grill_count'] == 0)
            Text("grill", style: TextStyle(fontSize: 12, color: Colors.black)),
          if (itemQuantities['grill_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['grill_count'] =
                      (itemQuantities['grill_count']! < 100)
                          ? itemQuantities['grill_count']! + 1
                          : 0;
                });
              },
              icon: Icon(Icons.add),
            ),
        ],
      ),
    ),
  ],
),
              Column(
  children: [
    Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "images/biriyani.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ),
    ElevatedButton(
      onPressed: () {
        setState(() {
          itemQuantities['biriyani_count'] = itemQuantities['biriyani_count']! + 1;

        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
      child: Row(
        children: [
          if (itemQuantities['biriyani_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['biriyani_count'] =
                      (itemQuantities['biriyani_count']! > 0)
                          ? itemQuantities['biriyani_count']! - 1
                          : 0;
                });
              },
              icon: Icon(Icons.remove),
            ),
          if (itemQuantities['biriyani_count']! > 0)
            Text('${itemQuantities['biriyani_count']}'),
          if (itemQuantities['biriyani_count'] == 0)
            Text("biriyani", style: TextStyle(fontSize: 12, color: Colors.black)),
          if (itemQuantities['biriyani_count']! > 0)
            IconButton(
              onPressed: () {
                setState(() {
                  itemQuantities['biriyani_count'] =
                      (itemQuantities['biriyani_count']! < 100)
                          ? itemQuantities['biriyani_count']! + 1
                          : 0;
                });
              },
              icon: Icon(Icons.add),
            ),
        ],
      ),
    ),
  ],
)]))]);
          
  }
}