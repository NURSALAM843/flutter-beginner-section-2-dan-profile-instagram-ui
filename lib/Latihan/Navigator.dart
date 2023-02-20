import 'package:flutter/material.dart';

class DasarNavigation extends StatelessWidget {
  const DasarNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Navigation",
          style:
              const TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            );
          },
          child: Text("NEXT PAGE"),
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          "Ini Page Product",
          style:
              const TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Back TO Home"),
        ),
      ),
    );
  }
}
