import 'package:flutter/material.dart';

class DasarTabBar extends StatefulWidget {
  DasarTabBar({super.key});

  @override
  State<DasarTabBar> createState() => _DasarTabBarState();
}

class _DasarTabBarState extends State<DasarTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Tabbar"),
        bottom: TabBar(
          controller: tabC,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabC,
        children: [
          Center(
            child: Text("Camera"),
          ),
          Center(
            child: Text("Chats"),
          ),
          Center(
            child: Text("Status"),
          ),
          Center(
            child: Text("Calls"),
          ),
        ],
      ),
    );
  }
}
