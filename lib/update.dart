import 'package:flutter/material.dart';

class Updatescreen extends StatelessWidget {
  const Updatescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          "Update",
          style: TextStyle(
            fontSize: 20,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 215, 28),
        actions: [
          Icon(Icons.qr_code_2_outlined),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
          Icon(Icons.camera_alt_outlined),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
          Icon(Icons.menu),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
        ],
      ),
    );
  }
}
