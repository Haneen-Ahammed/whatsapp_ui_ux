import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {
  const Callscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calls", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 255, 255, 255))),
        backgroundColor:  Colors.green,
        actions: [
          Icon(Icons.qr_code_2_outlined),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
          Icon(Icons.camera_alt_outlined),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
          Icon(Icons.menu),
          Padding(padding: EdgeInsetsGeometry.only(right: 25)),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text(
              "Haneen",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("⬅ 28 May,12.44pm"),
            trailing: Icon(Icons.call_end_outlined),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text(
              "Hanna",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("28 May,12.44pm"),
            trailing: Icon(Icons.call_outlined),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text(
              "Faris",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("28 May,12.44pm"),
            trailing: Icon(Icons.call_outlined),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text(
              "Shibila",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("28 May,12.44pm"),
            trailing: Icon(Icons.call_outlined),
          ),
        ],
      ),
    );
  }
}
