import 'package:flutter/material.dart';

class DasarDrawer extends StatelessWidget {
  const DasarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 120,
              color: Colors.teal,
              child: Text(
                "DASHBOARD",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_rounded),
                    title: Text("Product"),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_sharp),
                    title: Text("Order"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_rounded),
                    title: Text("Product"),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_sharp),
                    title: Text("Order"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_rounded),
                    title: Text("Product"),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_sharp),
                    title: Text("Order"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_rounded),
                    title: Text("Product"),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_sharp),
                    title: Text("Order"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_rounded),
                    title: Text("Product"),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_filled_sharp),
                    title: Text("Order"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
