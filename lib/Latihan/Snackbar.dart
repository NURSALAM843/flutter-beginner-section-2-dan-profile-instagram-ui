import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snackbar"),
          actions: const [],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Halo"),
                  action: SnackBarAction(
                    label: "Cancel",
                    onPressed: () {
                      print("Tidak Jadi Melakukan Aksi");
                    },
                    textColor: Colors.white,
                  ),
                  backgroundColor: Colors.green,
                  duration: const Duration(seconds: 2),
                  margin: EdgeInsets.all(20),
                  clipBehavior: Clip.antiAlias,
                  dismissDirection: DismissDirection.horizontal,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              );
            },
            child: Text("Show Snackbar"),
          ),
        ));
  }
}
