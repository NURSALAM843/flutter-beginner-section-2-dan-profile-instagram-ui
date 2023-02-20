import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: const Text("Title Dialog"),
                content: const Text("Ini Adalah Content Dialog"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("batal"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("oke"),
                  ),
                ],
              ),
            );
          },
          child: const Text("SHOW DIALOG"),
        ),
      ),
    );
  }
}
