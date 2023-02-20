import 'package:flutter/material.dart';

class DasarBottomSheet extends StatelessWidget {
  const DasarBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
        actions: const [],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  builder: (context) => SizedBox(
                    height: 300,
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () => print("Klik Photo"),
                          leading: Icon(Icons.phone),
                          title: Text("Photo"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Music"),
                          leading: Icon(Icons.music_note_rounded),
                          title: Text("Music"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Video"),
                          leading: Icon(Icons.video_collection_rounded),
                          title: Text("Video"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Share"),
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                        ListTile(
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text("Cancel"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                "SHOW BOTTOM SHEET",
              )),
        ),
      ),
    );
  }
}
