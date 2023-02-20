import 'package:flutter/material.dart';

class InformasiProfile extends StatelessWidget {
  InformasiProfile(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
