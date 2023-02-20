import 'package:flutter/material.dart';

class DasarDropdown extends StatefulWidget {
  DasarDropdown({super.key});

  @override
  State<DasarDropdown> createState() => _DasarDropdownState();
}

class _DasarDropdownState extends State<DasarDropdown> {
  final List dataItem = [
    {"judul": "Pilihan Ke - 1", "data": 1},
    {"judul": "Pilihan Ke - 2", "data": 2},
    {"judul": "Pilihan Ke - 3", "data": 3}
  ];

  late int dataAwal;

  @override
  void initState() {
    dataAwal = dataItem[0]['data'];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton<int>(
            value: dataAwal,
            items: dataItem
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(
                      "${e["judul"]}",
                    ),
                    value: e["data"] as int,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
