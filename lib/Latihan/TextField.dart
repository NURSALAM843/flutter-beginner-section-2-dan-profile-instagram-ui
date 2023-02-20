import 'package:dasar_flutter_section_2/Latihan/Dialog.dart';
import 'package:flutter/material.dart';

class TextFieldDasar extends StatelessWidget {
  const TextFieldDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextField1(),
    );
  }
}

class TextField1 extends StatefulWidget {
  const TextField1({super.key});

  @override
  State<TextField1> createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  bool iSHidden = true;

  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Card(
          color: Colors.grey[300],
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              TextField(
                controller: emailC,
                autocorrect: true,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: passC,
                autocorrect: false,
                obscureText: iSHidden,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon: const Icon(Icons.vpn_key),
                  suffix: IconButton(
                      onPressed: () {
                        if (iSHidden == true) {
                          iSHidden = false;
                        } else {
                          iSHidden = true;
                        }
                        setState(() {});
                      },
                      icon: const Icon(Icons.remove_red_eye)),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print(
                      "Login Dengan Email (${emailC.text}) & Password (${passC.text})");
                },
                child: Text("Save"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
