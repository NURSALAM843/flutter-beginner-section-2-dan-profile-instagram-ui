import 'package:flutter/material.dart';

class DasarBottomNavigationBar extends StatefulWidget {
  const DasarBottomNavigationBar({super.key});

  @override
  State<DasarBottomNavigationBar> createState() =>
      _DasarBottomNavigationBarState();
}

class _DasarBottomNavigationBarState extends State<DasarBottomNavigationBar> {
  late int index;

  List showWidget = [
    Center(
      child: Text("home"),
    ),
    Center(
      child: Text("shop"),
    ),
    Center(
      child: Text("person"),
    ),
  ];

  @override
  void initState() {
    index = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Bottom Navigation Bar"),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        currentIndex: index,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        iconSize: 20,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
    );
  }
}
