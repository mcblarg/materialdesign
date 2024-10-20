import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    Container(
      // Use the image as a background that covers the entire space
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.imgur.com/CFdBwno.jpeg'), // Updated with the full image URL
          fit: BoxFit.cover, // Make the image cover the entire container
        ),
      ),
    ),
    Center(child: Text('Map', style: TextStyle(fontSize: 24))),
    Center(child: Text('Inventory', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wasteland Explorer'),
        backgroundColor: Colors.brown[800],
      ),
      body: _pages.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backpack),
            label: 'Inventory',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.brown[700],
        onTap: _onItemTapped,
      ),
    );
  }
}
