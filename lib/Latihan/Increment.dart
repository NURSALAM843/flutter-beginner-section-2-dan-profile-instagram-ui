//stateless -> tampilan static -> tidak ada perubahan state/data pada screen
//stateful -> tampilan dynamic -> data bisa berubah-ubah -> bisa pakai state

import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  const Increment({super.key});

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int nilai = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Increment"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      nilai = nilai - 1;
                      setState(() {});
                    },
                    child: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nilai = nilai + 1;
                      setState(() {});
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
