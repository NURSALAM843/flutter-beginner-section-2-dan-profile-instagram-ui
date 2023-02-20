import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.amber],
              ),
              color: Colors.amber),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: const DecorationImage(
                image: NetworkImage("https://i.ibb.co/PGv8ZzG/me.jpg"),
                fit: BoxFit.cover),
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ],
    );
  }
}
