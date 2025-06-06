import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 255, 255, 255))),
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Haneen",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("12:30am"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("shibu",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi"),
            trailing: Text("2:30am"),
            
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740",
              ),
            ),
            title: Text("Hanna",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hellllllllllllllllllll"),
            trailing: Text("1:30am"),
          ),
        ],
      ),
    );
  }
}
